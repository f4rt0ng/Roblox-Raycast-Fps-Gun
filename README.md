# Roblox Raycast Gun System

A simple first-person shooter system created in Roblox Studio with Lua. This gun system demonstrates raycasting, damage, bullet trails, and self-hit prevention.

## Features
- Raycast-based shooting
- Bullet trail effect (Neon Part)
- 25 damage per hit
- Ignores hits on your own character
- Easy to extend with ammo/reload logic

## Setup Instructions

Follow these steps in Roblox Studio:

1. In `StarterPack`, insert a **Tool** named `Gun`.
2. Inside it, add a **Part** named `Handle`.
3. In `ReplicatedStorage`, insert a **RemoteEvent** named `ShootGun`.
4. Inside the Tool, add:
   - A **LocalScript** named `GunClient` (handles input + effect)
   - A **Script** named `GunServer` (handles raycast + damage)
5. Add a dummy from the Rig menu to test hits.

## Author
Made by **f4rt0ng**  
Discord: `fartong`  
Available for scripting commissions!

## License
MIT – Free to use with credit.
