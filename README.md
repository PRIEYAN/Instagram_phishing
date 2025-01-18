# Instagram Phishing Clone

This project is designed to replicate the Instagram login page. The purpose of this project is to **educate** about phishing attacks by showing how attackers can capture sensitive user information, like login credentials. **Note**: This project is intended for **educational purposes only**.

---

## Requirements

- **Python 3.10.12**
- **Flask 3.0.3**
- **Werkzeug 3.0.4**

---

## Setup Instructions

Follow these steps to set up and run the project:

1. **Clone the repository:**
    ```bash
    git clone https://github.com/PRIEYAN/Instagram_phishing
    ```

2. **Navigate to the project folder:**
    ```bash
    cd Instagram_phishing
    ```

3. **Create a virtual environment:**
    ```bash
    virtualenv env
    ```

4. **Activate the virtual environment:**
    - For Windows:
        ```bash
        env\Scripts\activate
        ```
    - For macOS/Linux:
        ```bash
        source env/bin/activate
        ```

5. **Run the application:**
    ```bash
    python3 app.py
    ```

6. **Expose your local Flask app using Ngrok:**
    Open a new terminal tab and run:
    ```bash
    ngrok http 5000
    ```

---

## How It Works

This application mimics an Instagram login page. When users enter their credentials, the entered data is captured and displayed in the terminal where the Flask app is running. This simulates a phishing attack and shows how malicious actors can collect sensitive information.

---

## Disclaimer

This project is **for educational purposes only**. It demonstrates how phishing attacks are executed to help users better understand the risks associated with online security. **Do not use this project for malicious purposes**.
