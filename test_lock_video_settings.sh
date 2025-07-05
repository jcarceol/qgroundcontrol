#!/bin/bash

# QGroundControl Video Settings Lock Feature Test Script
# This script provides guidance for testing the new Lock Manual Settings feature

echo "QGroundControl Video Settings Lock Feature Test Guide"
echo "=================================================="
echo

echo "Prerequisites:"
echo "- QGroundControl compiled with the new feature"
echo "- ArduPilot vehicle with camera/video stream capability"
echo "- Test environment with video streaming setup"
echo

echo "Test 1: Manual Configuration Preservation"
echo "----------------------------------------"
echo "1. Open QGroundControl Video Settings"
echo "2. Set video source to 'UDP h.264 Video Stream'"
echo "3. Set UDP URL to '192.168.1.100:5600'"
echo "4. Enable 'Lock Manual Settings' checkbox"
echo "5. Connect to ArduPilot vehicle with video stream"
echo "6. Verify that video source and URL remain unchanged"
echo "7. Check that status shows 'Mavlink camera stream detected but manual settings are locked'"
echo

echo "Test 2: Auto-Configuration Functionality"
echo "---------------------------------------"
echo "1. Disable 'Lock Manual Settings' checkbox"
echo "2. Connect to ArduPilot vehicle with video stream"
echo "3. Verify that video settings are automatically updated"
echo "4. Check that status shows 'Mavlink camera stream is automatically configured'"
echo "5. Verify that manual controls are disabled when auto-configured"
echo

echo "Test 3: Settings Persistence"
echo "---------------------------"
echo "1. Enable 'Lock Manual Settings'"
echo "2. Set manual video configuration"
echo "3. Close QGroundControl"
echo "4. Restart QGroundControl"
echo "5. Verify that lock setting is still enabled"
echo "6. Verify that manual settings are preserved"
echo

echo "Test 4: UI State Validation"
echo "--------------------------"
echo "1. Test checkbox visibility with different video sources:"
echo "   - Disabled: checkbox should be visible"
echo "   - UDP/RTSP/TCP: checkbox should be visible"
echo "   - No Video: checkbox should not be visible"
echo "2. Test manual controls accessibility:"
echo "   - Lock enabled + auto-stream detected: controls should be enabled"
echo "   - Lock disabled + auto-stream detected: controls should be disabled"
echo "   - No auto-stream: controls should be enabled"
echo

echo "Test 5: Edge Cases"
echo "-----------------"
echo "1. Toggle lock setting during active video stream"
echo "2. Test with vehicle connection/disconnection cycles"
echo "3. Test with multiple video receivers"
echo "4. Test invalid URL handling with lock enabled"
echo

echo "Expected Debug Log Messages:"
echo "---------------------------"
echo "When lock is enabled and auto-config attempted:"
echo "  'Manual video settings locked, skipping auto-configuration'"
echo
echo "When auto-configuration proceeds normally:"
echo "  'Configure stream (videoContent): <stream_uri>'"
echo
echo "When stream is considered auto-configured:"
echo "  'Stream auto configured'"
echo

echo "Verification Checklist:"
echo "----------------------"
echo "□ Lock checkbox appears in Video Settings"
echo "□ Manual settings preserved when lock enabled"
echo "□ Auto-configuration works when lock disabled"
echo "□ Settings persist across restarts"
echo "□ Status messages accurately reflect state"
echo "□ Manual controls accessibility matches expected behavior"
echo "□ No video streaming functionality regressions"
echo "□ Debug logging provides useful troubleshooting info"

echo
echo "For additional testing, monitor QGroundControl debug logs:"
echo "QGC_LOGGING_CATEGORY=VideoManagerLog ./QGroundControl"
