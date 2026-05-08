# MSound Technical Specification

## Overview
A high-quality music streaming app for iOS and Android.

## Details
- **Project Name:** MSound
- **Package ID:** `com.kalanba.msound`
- **Primary Platform:** iOS (SwiftUI)
- **Secondary Platform:** Android (Jetpack Compose)
- **Database:** MongoDB (Atlas + Device Sync/Realm)
- **Target UI:** Modern, slick, "bien bacana" (Glassmorphism / Neumorphism influence?)

## Core Features
1. **Music Player:** Stream real music tracks (no low-quality samples).
2. **Playlists:** Create, edit, and share playlists.
3. **Database Integration:** MongoDB for user data, playlists, and track metadata.
4. **UI/UX:** Focus on animations and high-end design.

## Architecture Ideas
- **Backend:** MongoDB Atlas App Services (Trigger, Functions, Auth).
- **Mobile:** Realm SDK for offline-first capabilities.
- **Audio:** `AVFoundation` (iOS) and `ExoPlayer/Media3` (Android).
