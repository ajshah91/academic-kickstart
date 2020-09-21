+++
title = "Instructions"
subtitle = ""

# Add a summary to display on homepage (optional).
summary = ""

date = 2020-09-21T08:56:50-04:00
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = []

# Is this a featured post? (true/false)
featured = false

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = []
categories = []

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["deep-learning"]` references
#   `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
# projects = ["internal-project"]

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
[image]
  # Caption (optional)
  caption = ""

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++

## Protocol for running the experiment

1. [Ensure that the safety and connectivity checks are complete](#safety))
1.  [Start up and initialize the robot](#startup)
2. [Start the PUnS and BSI Servers](#server)
3. Assign protocol `<ProtocolID>` and participant ID `<ParticipantID>` for the next participant and navigate to the appropriate briefing:
    1. Task 1 (all five objects) Protocol A (Active), B (Random): [link here](https://docs.google.com/presentation/d/1lbmulkdZtqsR6LqO6Xh8NaX58SelrH_qKz-pCHDTfTs/)
    2. Task 1 Protocol C (Batch): [link here](https://docs.google.com/presentation/d/1lcr5R5QCZUoPqs1g07So7u7x-vWgsT_3rk1i6qi73Es)
    3. Task 2 (Dinner plate and bowl) Protocol A/B: [link here](https://docs.google.com/presentation/d/1giAs8YMYyNz3tqzeD-ShqrFSs32xhQ6UdnKxo5P_jLM)
    4. Task 2 Protocol C: [link here](https://docs.google.com/presentation/d/1lOzD4R1bXH3PcMl83DnsTK4zH4qDDweY2oWrX6LeQiA)
5. Open the [Display](https://docs.google.com/presentation/d/1LSwaOUx2PQSgX8Ad-aSi_CToBl41W5M9zVzf8J6IyYE/) presentation. Copy over the appropriate reference image on the slides
4. Start the Zoom call on personal laptop and the Samsung laptop. Configure the Samsung laptop to stop audio and video, and put in side-by-side mode with video pinned to the robot camera. Share the browser window on Zoom on the personal laptop.
5. Brief the participant
6. Switch to the "Display" presentation
7. Proceed with the experiment script
8. [Experiment specific scripts](#exp)


## <a name = 'safety'> Safety Checks:

1. The acer laptop must be on
2. The charger must be turned on and charging (blinking green or amber light on the A indicator on the charger)
3. Grey ended white ethernet cable connected to a wall internet port
4. Blue ended white ethernet cable connected to upper ethernet port on the controller PC
5. Check for any obstructions that might be tripping the laser scanners

## <a name = 'startup'> Initializing The Robot

#### Turn on
* Turn on the robot
  * Flip key to the right.
  * Turn on the teach pedant.
  * Flip key to the right again and hear a sound.
  * Initialize the robot using the teach pedant.
    * If `SAFEGUARD STOP` pops up, then you can flip the key to the right again and hear a sound.
  * Move the robot arm back to `home` using the teach pedant.
    * Different demos have different joint limits. If you start the demo from a random pose rather than the home pose, the planning during the demo might fail.
* Turn on the Acer PC which will be used for the camera on the robot wrist.
* Turn on the demo PC.
* Connect the white Ethernet cable with a gray connector to the Internet port.
  * We need Internet to sync the time of all of our machines to the Internet.
* Connect the white Ethernet cable with a blue connector to the demo PC Ethernet port.
* Use a rubber band to tie the robot camera support frame and the gray/gre

#### Preparation

* Operating the robot onboard PC from the demo PC via SSH
  * `source-puns`
  * `sshyuri` with password `mit`.
  * Change `.bashrc`:
    * Uncomment the line of `source .../setup.bash` with `honda_onboard`.
    * Comment other lines in the same group, with the format as `source .../setup.bash`.
      * There should be multiple lines with the format `source .../setup.bash` and they are right next to each other.
      * You need to find the line for your demo and keep that line in the `.bashrc`, and comment out the other lines in the same group.
    * Please don't source multiple `setup.bash` files in one terminal.
      * For example, when the terminal has already sourced a file `a`, and you want to source another one `b`, please **kill** that terminal and create a new terminal that only sources `b` rather than `a`.
  * `updatetime`
    * Sync the time in the robot onboard PC with the Internet.
* Operating the Acer PC for the wrist camera via SSH
  * `source-puns`
  * `sshacer` with password `mit`.
  * `updatetime`
* Operating the demo PC directly
  * `source-puns`
  <!-- * Change `.bashrc`:
    * Uncomment the line of `source .../setup.bash` with `ankit`.
    * Comment other lines of `source .../setup.bash`.
    * Please don't source multiple `setup.bash` files in one terminal.
      * For example, when the terminal has already sourced a file `a`, and you want to source another one `b`, please **kill** that terminal and create a new terminal that only sources `b` rather than `a`. -->
  * `updatetime`

#### On the demo PC, start to run these commands:
* Terminal 1
  * Tab 1
    * `source-puns`
    * `sshyuri` with password `mit`.
    * `roscore`
  * Tab 2
    * `source-puns`
    * `sshyuri` with password `mit`.
    * `roslaunch yuri_launch table_setup.launch`
      * Launch the robot.
      * When you see this message, the process is done:
        * `All is well! everyone is happy! You can start planning now!`
  * Tab 3
    * `source-puns`
    * `sshyuri` with password `mit`.
    * `rosrun phasespace_acquisition fake_localization.py`
      * This will keep sending a fake predefined fixed localization for the robot base as the odometry.
  * Tab 4
    * `source-puns`
    * `sshacer` with password `mit`.
    * `roslaunch yuripy_joule camera_with_apriltags.launch`
  * Tab 5
    * `source-puns`
    * `sshyuri` with password `mit`.
    * `roslaunch yuri_launch camera_with_apriltags.launch load_camera_driver:=false load_apriltags_software:=true apriltags_launch_file_name:=r200_table_setup`
      * The AprilTag detection software (the camera driver is running on the Acer PC).
      * We run this separately from `table_setup.launch` so that if it crashes, we only need to restart this node.

## <a name = 'servers'> Starting servers

If you are working from the `Shen` account, the alias `ssh-desktop` should log you into the desktop. You must have a working internet connection for this to work. Once you log in, use `screen` to ensure that your script runs even in case the SSH connection breaks

in the first `screen`:

1. Enter the directory by `cd ~/Github/Personal_AJShah/puns-bsi-client`
2. Start `python puns-server.py`

In the second `screen`:

4. Enter the directory `cd ~/Github/Personal_AJShah/puns-bsi-client`
3. Start `python bsi-server.py`

Detach a screen by hitting `Ctrl + a` then `d`. List all running screens using `screen -ls`. Attach a screen using `screen -r <addr>`.



## <a name = 'exp'> Experiment specific scripts
Use a second terminator terminal to run all the experiment specific scripts. An ideal layout is as follows:

  * Tab 1
    * Navigate the the client scripts folder `cd ~/Github/Personal_AJShah/pun-bsi-client`
    * Start a protocol using `python3.6 Task_<ProtocolID>_Remote.py <ParticipantID>`
  * Tab 2
    * Use this to start demonstrations. **Important** Know the `<demoID>` being recorded
    * `source-puns`
    * `rosyuri`
    * When prompted on the script screen or the display, start a demonstration `rosrun table_setup teleop_demo.py --demo-id=<demoID>`
  * Tab 3
    * `source-puns`
    * `rosyuri`
    * When prompted to start a robot execution `rosrun table_setup run_interactive_demo.py`
  * Tab 4 (optional)
    * Use to monitor the camera using `rviz`
  * Tab 5 (optional)
    * Use to monitor the specs using:
      * `ipython3`
      * `from puns_bsi_client_dinner import *`
