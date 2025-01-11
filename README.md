# Rick and Morty Characters App "Yassir ios"

This app fetches and displays characters from the "Rick and Morty" API. It is structured with clean architecture principles, ensuring separation of concerns and maintainability.

## Features

- Fetches character data from the Rick and Morty API.
- Displays a list of characters on the first screen.
- Uses a modular and testable architecture.

## Project Structure

### Components

1. **First Screen**
   - Retrieves data from the API via a network layer.
   - Displays the characters in a list format with a clean and intuitive UI.
  
2.  **second  Screen**
   - get the character details that send from first screen.
   - Displays the characters details.

3. **CharacterEndpoint**
   - Configures details for the `getCharacters` API call:
     - Path
     - Headers
     - HTTP method (GET)

4. **URLSessionAPIClient**
   - Handles network requests using `URLSession`.
   - Encapsulates logic for making API requests and processing responses.

5. **CharacterServiceProtocol**
   - Defines an abstract `getCharacters` method to be implemented by the service layer for character-fetching functionality.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/magdy5256/Yassir.git
   ```

2. Navigate to the project directory:
   ```bash
   cd rick-and-morty-app
   ```


3. Open the project in Xcode:
   ```bash
   open Yassir ios.xcodeproj
   ```

## Usage

1. Run the app on a simulator or device.
2. The first screen will display a list of Rick and Morty characters fetched from the API.

## Requirements

- iOS 13.0 or later
- Xcode 14.0 or later

## API Reference

This app uses the [Rick and Morty API](https://rickandmortyapi.com/). Ensure that you have an active internet connection to fetch character data.

## Architecture

The app is designed with a modular approach for scalability and testability. Key architectural patterns used:

- **Protocol-Oriented Programming**: To define contracts (e.g., 'CharacterServiceProtocol').
- **Network Layer Abstraction**: Encapsulates API interactions in 'URLSessionAPIClient'.

