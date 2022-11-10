# Monkeying Around

It is lunch time in the construction site. Your mission is to find all the lunch boxes for your colleagues and bring them down.

### TODO List

- [x] Initialize the repository and project 
- [ ] Create world (tile map?)
    - [x] POC
    - [ ] Longer journey
    - [ ] Add the challanges
    - [ ] Create full journey
- [ ] Create the monkey:
    - [x] Gravity
    - [x] Left and right movement
    - [x] Collision
    - [x] Enhance movement and gravity 
    - [x] Draw character
    - [x] Idle animation
    - [x] Walk animation
    - [ ] Falling animation with parachute
    - [ ] Put the character back where he fell down
- [x] Camera
- [x] Select color pallet: https://lospec.com/palette-list/rustic-rainbow
- [x] Lunch box:
    - [x] Cllision detection
    - [x] Grab lunch box counter
    - [x] Make lunch box disapear
    - [x] Draw lunch box
- [ ] Moving platforms
    - [x] Animation tween
    - [ ] Add the platforms design in Godot
    - [ ] Draw platforms
- [ ] Wooden boxes
    - [ ] Collision detection
    - [ ] Gravity
    - [ ] Draw box
- [ ] Win animation: character goes down with the food and meets other monkeys
- [ ] HUD
    - [x] Added pixel art font
    - [ ] Cover & instructions
    - [ ] Game Over
    - [x] Score
    - [ ] Timer
- [ ] Sound
    - [ ] Create FX with https://github.com/KilledByAPixel/ZzFX
    - [ ] (Optional) Compose music

### Blog

#### Day 0 - Nov 4th, 2022

1. Brainstorm on the topics; selected a few and chose one.
2. Though of a few ideas around the topic, and selected a couple..

#### Day 1 - Nov 5th, 2022

1. Defined the concept and created todo list for the game.
2. Created and initialized GitHub repository.
3. Created the Godot project and added it to the repository.
4. Created a POC tile map with collisions.
5. Create the player with a white square, with collision, gravity (falling with a parachute) and left & right movement.

#### Day 2 - Nov 6th, 2022

1. Create moving platforms based on tweens.
2. Debug moving platforms (character was shaking).

#### Day 3 - Nov 7th, 2022

1. Fixed moving platforms (the solution was to make sure the (base) platform was a KinematicBody2D instead of a Node2D with a KinematicBody2D inside.
2. Drew the main character and tested different sizes
3. Enhanced player movement: added acceleration and friction to stop

#### Day 4 - Nov 8th, 2022

1. Added a camera to follow the player
2. Added more structure drawings
3. Reorganized the peoject files
4. Added score system with Singleton and signals
5. Added pixel art font
6. Drew lunch box
7. Implemented lunch box pick up

#### Day 5 - Nov 9th, 2022

1. Completed player sprite sheet (drwe all animations)

#### Day 6 - Nov 10th, 2022

1. Implmentend player animations in code

