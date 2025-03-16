<div class="contact-form-container">
    <section class="contact-form-section">
        <h2 class="section-title">Contact Us</h2>
        <div class="section-description">
            <p>Have questions about our products? Need a quote? Fill out the form below and our team will get back to you shortly.</p>
        </div>

        <div class="contact-form-wrapper">
            <form id="contact-form" action="/submit-form" method="POST">
                <div class="form-group">
                    <label for="fullName">Full Name *</label>
                    <input type="text" id="fullName" name="fullName" required>
                </div>

                <div class="form-group">
                    <label for="email">Email Address *</label>
                    <input type="email" id="email" name="email" required>
                </div>

                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone">
                </div>

                <div class="form-group message-container">
                    <label for="message">Message *</label>
                    <textarea id="message" name="message" rows="6" required></textarea>
                </div>

                <div class="form-group">
                    <label class="checkbox-container">
                        <input type="checkbox" id="privacy" name="privacy" required>
                        <span class="checkmark"></span>
                        I agree to the processing of my personal data in accordance with the privacy policy.
                    </label>
                </div>

                <div class="form-group text-center">
                    <button type="submit" class="submit-button">Send Message</button>
                </div>
            </form>

            <div class="contact-info-sidebar">
                <h3>Our Contact Information</h3>
                <div class="contact-item">
                    <div class="contact-icon email-icon"></div>
                    <div class="contact-text">
                        <strong>Email:</strong>
                        <p>info@solid-gate.eu</p>
                    </div>
                </div>
                <div class="contact-item">
                    <div class="contact-icon phone-icon"></div>
                    <div class="contact-text">
                        <strong>Phone:</strong>
                        <p>+880 1234 56789</p>
                    </div>
                </div>
                <div class="contact-item">
                    <div class="contact-icon hours-icon"></div>
                    <div class="contact-text">
                        <strong>Business Hours:</strong>
                        <p>Mon - Fri: 8:00 AM - 6:00 PM</p>
                        <p>Sat: 10:00 AM - 2:00 PM</p>
                    </div>
                </div>
                <div class="contact-item">
                    <div class="contact-icon address-icon"></div>
                    <div class="contact-text">
                        <strong>Address:</strong>
                        <p>ul. Zerzeńska 33, 04-787 Warszawa</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

