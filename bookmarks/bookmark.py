from datetime import datetime
import os

def add_bookmark():
    # Get current timestamp in IST
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    
    # Get user input
    section = input("Enter section number: ")
    comment = input("Enter your comment: ")
    
    # Create the bookmark line
    bookmark_line = f"- [{timestamp}] Section {section}: {comment}\n"
    
    # Get the directory of this script
    script_dir = os.path.dirname(os.path.abspath(__file__))
    bookmarks_file = os.path.join(script_dir, "bookmarks.md")
    
    # Append to bookmarks.md in the same directory as this script
    with open(bookmarks_file, "a") as f:
        f.write(bookmark_line)
    
    print(f"Bookmark added to {bookmarks_file}!")

if __name__ == "__main__":
    add_bookmark()
