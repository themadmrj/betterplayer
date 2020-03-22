import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:open_iconic_flutter/open_iconic_flutter.dart';

class BetterPlayerControlsConfiguration {
  final Color controlBarColor;
  final Color textColor;
  final Color iconsColor;
  final IconData playIcon;
  final IconData pauseIcon;
  final IconData muteIcon;
  final IconData unMuteIcon;
  final IconData fullscreenEnableIcon;
  final IconData fullscreenDisableIcon;

  ///Cupertino only icon
  final IconData skipBackIcon;

  ///Cupertino only icon
  final IconData skipForwardIcon;
  final bool enableFullscreen;
  final bool enableMute;
  final bool enableProgressText;
  final bool enableProgressBar;
  final bool enablePlayPause;
  final Color progressBarPlayedColor;
  final Color progressBarHandleColor;
  final Color progressBarBufferedColor;
  final Color progressBarBackgroundColor;
  final Duration controlsHideTime;
  final Widget customControls;
  final bool showControls;
  final bool showControlsOnInitialize;
  final double controlBarHeight;
  final String defaultErrorText;
  final String loadingNextVideoText;
  final String liveText;
  final Color liveColor;

  const BetterPlayerControlsConfiguration(
      {this.controlBarColor = Colors.black87,
      this.textColor = Colors.white,
      this.iconsColor = Colors.white,
      this.playIcon = Icons.play_arrow,
      this.pauseIcon = Icons.pause,
      this.muteIcon = Icons.volume_up,
      this.unMuteIcon = Icons.volume_mute,
      this.fullscreenEnableIcon = Icons.fullscreen,
      this.fullscreenDisableIcon = Icons.fullscreen_exit,
      this.skipBackIcon = OpenIconicIcons.reload,
      this.skipForwardIcon = OpenIconicIcons.reload,
      this.enableFullscreen = true,
      this.enableMute = true,
      this.enableProgressText = false,
      this.enableProgressBar = true,
      this.enablePlayPause = true,
      this.progressBarPlayedColor = Colors.white,
      this.progressBarHandleColor = Colors.white,
      this.progressBarBufferedColor = Colors.white70,
      this.progressBarBackgroundColor = Colors.white60,
      this.controlsHideTime = const Duration(milliseconds: 300),
      this.customControls,
      this.showControls = true,
      this.showControlsOnInitialize = true,
      this.controlBarHeight = 48.0,
      this.defaultErrorText = "Video can't be played",
      this.loadingNextVideoText = "Loading next video",
      this.liveText = "LIVE",
      this.liveColor = Colors.red});

  factory BetterPlayerControlsConfiguration.white() {
    return BetterPlayerControlsConfiguration(
        controlBarColor: Colors.white,
        textColor: Colors.black,
        iconsColor: Colors.black,
        progressBarPlayedColor: Colors.black,
        progressBarHandleColor: Colors.black,
        progressBarBufferedColor: Colors.black54,
        progressBarBackgroundColor: Colors.white70);
  }

  factory BetterPlayerControlsConfiguration.cupertino() {
    return BetterPlayerControlsConfiguration(
        fullscreenEnableIcon: OpenIconicIcons.fullscreenEnter,
        fullscreenDisableIcon: OpenIconicIcons.fullscreenExit,
        playIcon: OpenIconicIcons.mediaPlay,
        pauseIcon: OpenIconicIcons.mediaPause,
        enableProgressText: true);
  }
}