import React, { useState, useEffect, useRef, useMemo, useCallback } from 'react';
import { useTransition, animated } from 'react-spring';
import shuffle from 'lodash/shuffle';
import debounce from 'lodash/debounce';
import Confetti from 'react-confetti';
import data from './data';
import '././App.css';
import HeadingImage from './images/banner.svg';
import Play from './images/play.svg';
import Reshuffle from './images/reshuffle.svg';
import Replay from './images/replay.svg';

function App() {
  const [data, setData] = useState([]);
  useEffect(() => {
    fetch('http://localhost:8081/tickets')
      .then(response => response.json())
      .then(data => setData(data))
      .catch(error => console.log(error));
  }, []); // Empty dependency array to run only once on mount

  const [names, setNames] = useState([]);
  useEffect(() => {
    setNames(data);
  }, [data]);

  const [initialLoad, setInitialLoad] = useState(false);
  const [windowHeight, setWindowHeight] = useState(null);
  const [windowWidth, setWindowWidth] = useState(null);
  const [showConfetti, setShowConfetti] = useState(false);
  const [wraffling, setWraffling] = useState(false);
  const confettiWrapper = useRef(null);
  const height = 60;
  const transitions = useTransition(
    useMemo(() =>
      names.map((data, i) => ({ ...data, y: 0.5 * i })),
      [names]
    ),
    (d) => d.name,
    {
      from: { position: 'initial', opacity: 0 },
      leave: {
        height: height - (height * 0.2),
        opacity: 0,
      },
      enter: ({ y }) => ({ y, opacity: 1 }),
      update: ({ y }) => ({ y }),
    }
  );

  const startRaffle = useCallback(() => {
    if (names.length <= 1) {
      setWraffling(true);
      setShowConfetti(true);
      return;
    }
    const randomIndex = Math.floor(Math.random() * names.length);
    const filterOutNames = names.filter((name) => name !== names[randomIndex]);
    setNames(filterOutNames);
    setInitialLoad(true);
  }, [names]);

  const debouncedShuffle = useCallback(
    debounce(() => {
      setNames(shuffle(names));
    }, 300),
    [names]
  );

  const restartRaffle = useCallback(() => {
    setInitialLoad(false);
    setNames(data);
    setWraffling(false);
    setShowConfetti(false);
  }, [data]);

  useEffect(() => {
    if (initialLoad) {
      const filteringTimer = setTimeout(() => {
        startRaffle();
      }, (names.length <= 10 ? 1000 : 100));
      return () => {
        clearTimeout(filteringTimer);
      };
    }
  }, [initialLoad, names, startRaffle]);

  useEffect(() => {
    setWindowHeight(confettiWrapper.current.clientHeight);
    setWindowWidth(confettiWrapper.current.clientWidth);
  }, []);

  return (
    <div className="container" ref={confettiWrapper}>
      <div className="raffle-header">
        <img className="banner-image" src={HeadingImage} alt="heading logo" />
        {!initialLoad && (
          <div className="raffle-header__buttons">
            <button className="button-primary" onClick={startRaffle}>
              <img src={Play} alt="heading logo" />
              Start Raffle
            </button>
            <button
              className="button-outline"
              onClick={debouncedShuffle}
            >
              <img src={Reshuffle} alt="heading logo" />
              Shuffle
            </button>
          </div>
        )}
      </div>
      {wraffling && (
        <Confetti
          recycle={showConfetti}
          numberOfPieces={80}
          width={windowWidth}
          height={windowHeight}
        />
      )}
      <div className="raffle-names">
        {transitions.map(({ item, props: { y, ...rest }, index }) => (
          <animated.div
            className="raffle-listnames"
            key={item.name} // Use a unique identifier, like the 'name' property
            style={{
              transform: y.interpolate(y => `translate3d(0,${y}px,0)`),
              ...rest
            }}
          >
            <div className="raffle-namelist">
              <span>{item.name}</span>
            </div>
          </animated.div>
        ))}
      </div>
      <div>
        {showConfetti && (
          <div className="raffle-ends">
            <h1 c>Congratulations! You have won the raffle!</h1>
            <button className="button-outline" onClick={restartRaffle}>
              <img src={Replay} alt="heading logo" />
              Replay
            </button>
          </div>
        )}
      </div>
    </div>
  );
}

export default App;