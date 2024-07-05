#!/usr/bin/python3
"""
    Python script that takes your GitHub credentials
    (username and password) and uses the GitHub API to display your id
"""
import requests
import sys

if __name__ == '__main__':
    if len(sys.argv) != 3:
        print("Usage: ./10-my_github.py <username> <password>")
        sys.exit(1)

    try:
        r = requests.get('https://api.github.com/user', auth=(sys.argv[1], sys.argv[2]))
        r.raise_for_status()  # Raise an HTTPError for bad responses
        json = r.json()
        try:
            print(json['id'])
        except KeyError:
            print("None")
    except requests.exceptions.RequestException as e:
        print(f"Error: {e}")
        print("None")
