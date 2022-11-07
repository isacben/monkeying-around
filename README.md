# Monkeying Around

It is lunch time in the construction site. Your mission is to find all the lunch boxes for your colleagues and bring them down.

### TODO List

- [x] Initialize the repository and project 
- [ ] Create world (tile map?)
    - [x] POC
    - [ ] Longer journey
    - [ ] Add the challanges
    - [ ] Draw plarforms
    - [ ] Create full journey
- [ ] Create the monkey:
    - [x] Gravity
    - [x] Left and right movement
    - [x] Collision
    - [ ] Enhance movement and gravity 
    - [ ] Draw character
    - [ ] Idle animation
    - [ ] Walk animation
    - [ ] Falling animation with parachute
    - [ ] Put the character back where he fell down
- [ ] Camera
- [ ] Select color pallet
- [ ] Lunch box:
    - [ ] Collision detection
    - [ ] Grab lunch box counter
    - [ ] Draw lunch box
- [ ] Moving platforms
    - [x] Animation tween
- [ ] Wooden boxes
    - [ ] Collision detection
    - [ ] Gravity
    - [ ] Draw box
- [ ] Win animation: character goes down with the food and meets other monkeys
- [ ] HUD
    - [ ] Cover & instructions
    - [ ] Game Over
    - [ ] Score
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
