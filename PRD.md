# Product Requirements Document: gothello

## Overview

`gothello` is a Go library that implements the core rules engine for the board game **Othello** (also known as Reversi). It allows users to create and manipulate a game state, validate and apply moves, and interact with the board via a terminal-friendly ASCII representation. It also includes a simple, non-strategic AI that plays random valid moves.

This library is designed to be embedded into other applications or used as a learning tool. It is **not** intended to provide a GUI or multiplayer features.

## Goals / In Scope

The initial version of `gothello` will support:

- Models to represent a configurable Othello board and game state.
- A rules engine to:
    - Identify valid moves for a player.
    - Apply a move to the board and flip appropriate pieces.
- Support for two players: abstracted as Player 1 and Player 2.
- ASCII-based board rendering for debugging and terminal use.
- A "dumb" AI that selects and applies a random valid move.
- Graceful handling of invalid moves.
- Thread-safe access to game state.

## Out of scope

The following features are explicitly out of scope:

- Intelligent AI or strategic move evaluation.
- Graphical interfaces or web UI.
- Online multiplayer capabilities.
- Game timers or asynchronous move processing.

## Requirements

Function Requirements:

1. The library must support configurable board sizes (e.g. 6x6, 8x8, 10x10).
2. The game state must track board positions, player turn, and move history.
3. The rules engine must return a list of valid moves for a given player.
4. When a valid move is played, the library must flip the appropriate opponent pieces.
5. Invalid moves must return a descriptive error without modifying the game state.
6. The ASCII renderer must output a human-readable board without coordinates.
7. The dumb AI must play instantly by selection a random move and applying it.

Non-Functional Requirements:

1. The library must be safe for concurrent access by multiple goroutines.
2. The codebase must be idiomatic Go and include unit tests for all core functionality.
3. The public API must be stable and documented.

## Technical Design Specification

The models and functionality of the game are going to depend on the following:

- **Game:** This model will maintain the state of the game and be the main way the user interfaces with the game (getting valid moves, playing moves, etc.).
- **Board:** This model will maintain the state of the board (which pieces are on the board and the position of those pieces).
- **Move:** This is an interface that valid moves will implement that apply a move to a specified game state.

### Game

```go
type Game struct {
    // Internal fields hidden.
}

// Create a new game with a given board size.
func NewGame(rows, cold int) *Game

// Get the current player.
func (g Game) CurrentPlayer() int

// Get valid moves for the current player.
func (g Game) ValidMoves() []Move

// Attemt to play a move, returns error if invalid.
func (g *Game) Play(move Move) error

// Returns an ASCII representation of the game state.
func (g Game) String() string

// Returns whether the game is finished, and if so which player won.
func (g Game) Finished() (bool, int)
```

### Board

```go
type Board []int

// Create a new board with the given board size.
func NewBoard(rows, cols int) *Board

// Accepts an ASCII representation of the board and sets the Board.
func (b *Board) SetFromString(string) error

// Returns an error if the board is in an invalid state.
func (b Board) Validate() error

// Places a piece on the board in the given coordinates.
func (b *Board) Place(x, y, piece int) error

// Flips the piece on the board in the given coordinates.
func (b *Board) Flip(x, y) error

// Returns an ASCII representation of the board state.
func (b Board) String() string
```

### Move

```go
type Move interface {
    Apply(*Game) error
}
```