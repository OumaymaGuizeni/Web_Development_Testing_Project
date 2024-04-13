function scrollToSection(sectionId) {
    const section = document.getElementById(sectionId);
    if (section) {
        try {
            section.scrollIntoView({ behavior: 'smooth' });
            console.log('Scrolled to section:', sectionId);
        } catch (error) {
            console.error('Error scrolling to section:', error);
        }
    } else {
        console.warn('Section not found with id:', sectionId);
    }
}

// Function to check if the current page URL contains the section ID and scroll to it
function scrollToSectionIfInURL() {
    const urlParams = new URLSearchParams(window.location.search);
    const sectionId = urlParams.get('section');
    if (sectionId) {
        scrollToSection(sectionId);
    }
}

// Call the function to scroll to the section if the section ID is in the URL
scrollToSectionIfInURL();
