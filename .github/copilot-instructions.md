# GitHub Copilot Instructions for Typespeed

## Project Overview
Typespeed is a terminal-based typing game written in C that measures your typing speed and calculates your fingers' Characters Per Second (CPS). It was originally inspired by the DOS game ztspeed. The game challenges users to type words that appear on the screen as quickly and accurately as possible.

## Project Structure
- **src/**: Contains the main C source code files
- **words/**: Contains word lists in different languages for the game
- **rules/**: Contains rule sets for configuring game behavior
- **etc/**: Contains configuration files
- **man/**: Contains manual pages
- **doc/**: Contains documentation
- **po/**: Contains translation files
- **testsuite/**: Contains test files and test utilities

## Building from Source
The project uses the GNU Autotools build system. To build the project:

1. **Configure the build**:
   ```bash
   ./configure
   ```
   
   Optional configuration flags:
   - `--with-highscoredir=DIR`: Specify the directory for storing highscore files (default: `${localstatedir}/games`)

2. **Compile the source code**:
   ```bash
   make
   ```

3. **Install the game** (optional):
   ```bash
   make install
   ```
   
   This will typically install to `/usr/local` unless a different prefix was specified during configuration.

## Docker Build
The project includes a Dockerfile for containerization:

1. **Build the Docker image**:
   ```bash
   docker build -t typespeed .
   ```

2. **Run the container**:
   ```bash
   docker run -it typespeed
   ```

## Dependencies
- **Required**:
  - C compiler (gcc or compatible)
  - libncurses (for terminal UI)
  - gettext (for internationalization)
  - automake/autoconf (for building from source)

## Game Features
- Multiple word lists in different languages
- Configurable rule sets
- Scoring system tracking CPS, typo ratio, and points
- Highscore tracking

## File Formats
- **Highscore File**: Tab-separated values format with fields for score, character count, player name, etc.
- **Rule Sets**: Configuration files with `.rule` prefix defining game behavior

## Testing
The project includes a test suite that can be run with:
```bash
make check
```

## Historical Context
- Originally created by Jani Ollikainen and Jaakko Manelius (1999-2003)
- Further developed by Tobias Stoeckmann (2006-2008)
- Licensed under GNU General Public License

## Code Style
- Traditional C code style
- GNU Autotools for build system

## Contribution Guidelines
When working on this project:
- Maintain compatibility with various terminal types
- Test thoroughly, especially with different terminal dimensions
- Follow the existing coding style
- Ensure translations are updated when adding user-facing text

## Important Links
- Original website: http://tobias.eyedacor.org/typespeed/
