#!/usr/bin/python3

import tkinter as tk
from PIL import Image, ImageTk

class LogoAnimationWindow:
    def __init__(self):
        self.root = tk.Tk()
        self.root.title("Logo Animation")
        
        # Load the logo image
        self.logo_image = Image.open("dev.gif")
        self.logo_frames = []
        self.current_frame = 0
        
        # Extract frames from the logo image
        try:
            while True:
                self.logo_frames.append(ImageTk.PhotoImage(self.logo_image))
                self.current_frame += 1
                self.logo_image.seek(self.current_frame)
        except EOFError:
            self.current_frame = 0
        
        # Display the logo animation
        self.logo_label = tk.Label(self.root)
        self.logo_label.pack(fill="both", expand=True)
        self.animate_logo()

    def animate_logo(self):
        if self.current_frame >= len(self.logo_frames):
            self.current_frame = 0
        self.logo_label.config(image=self.logo_frames[self.current_frame])
        self.current_frame += 1
        self.root.after(100, self.animate_logo)  # Change the delay (milliseconds) to control animation speed

    def start_animation(self):
        # Get the screen width and height
        screen_width = self.root.winfo_screenwidth()
        screen_height = self.root.winfo_screenheight()
        
        # Set the window size to cover the entire screen
        self.root.geometry("{}x{}+0+0".format(screen_width, screen_height))
        
        # Destroy the window after 3000 milliseconds (3 seconds)
        self.root.after(3000, self.root.destroy)
        self.root.mainloop()

def main():
    # Create and start the logo animation window
    logo_window = LogoAnimationWindow()
    logo_window.start_animation()

if __name__ == "__main__":
    main()
