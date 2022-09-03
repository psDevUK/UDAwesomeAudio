import React from 'react';
import { withComponentFeatures } from 'universal-dashboard';
import { useAudio } from "react-awesome-audio";
const UDAwesomeAudio = props => {
  const { isPlaying, play, pause, toggle } = useAudio({
    key: props.id,
    src: props.src,
    loop: props.loop,
    volume: props.volume,
    muted: props.muted,
  });
  return <div><button onClick={toggle}>{isPlaying ? "Pause" : "Play"}</button></div>;
}

export default withComponentFeatures(UDAwesomeAudio)