<div class="faq-container">
    <div class="faq-header">
        <h1 class="faq-title">Frequently Asked Questions</h1>
        <p class="faq-description">Find answers to common questions about our PVC windows and doors.</p>
    </div>

    <div class="faq-list">
        <div class="faq-item">
            <div class="faq-question">What is the difference between double and triple glazing?</div>
            <div class="faq-answer">
                <p><strong>Double glazing</strong> features two glass panels with a sealed gas-filled space between them, available in 60mm, 70mm, and 80mm profiles. It offers good insulation at a more affordable price.</p>
                <p><strong>Triple glazing</strong> features three glass panels creating two insulating chambers, available in 71mm and 81mm profiles. It provides superior thermal and acoustic insulation, ideal for energy-efficient buildings and extreme weather locations.</p>
                <p>Both options are energy efficient, but triple glazing offers better protection against heat loss and external noise with higher long-term energy savings.</p>
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">What color and design options are available for your windows and doors?</div>
            <div class="faq-answer">
                <p>We offer a wide range of colors and finishes to match any architectural style:</p>
                <ul style="margin: 10px 0 10px 20px;">
                    <li>Standard colors include Quartz Grey, Anthracite (RAL 7016), Textured Anthracite, Dark Green, Golden Oak, Dark Oak, Sherwood, Polish Pine, and Dark Mahogany</li>
                    <li>Custom designs and sizes available for all products</li>
                    <li>Various opening mechanisms (tilt and turn, sliding, fixed)</li>
                    <li>Different glazing options to meet specific requirements</li>
                </ul>
                <p>All our profiles have smooth, glossy surfaces that are resistant to dust and stains, ensuring lasting aesthetic appeal.</p>
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">What security features do your doors and windows offer?</div>
            <div class="faq-answer">
                <p>Our products incorporate multiple security features:</p>
                <ul style="margin: 10px 0 10px 20px;">
                    <li>Solid construction with durable materials for break-in resistance</li>
                    <li>Multi-point locking systems for enhanced protection</li>
                    <li>Anti-burglary bolts to prevent door manipulation</li>
                    <li>Metal reinforcements throughout for structural stability</li>
                    <li>High-quality hardware from recognized brands</li>
                </ul>
                <p>Our premium door models (like Thermo Diamond Lumina and Thermo Hybrid Fortis) combine these security features with modern design for both protection and aesthetics.</p>
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">How energy efficient are your windows and doors?</div>
            <div class="faq-answer">
                <p>Our products are designed for excellent energy efficiency through:</p>
                <ul style="margin: 10px 0 10px 20px;">
                    <li>Multi-chamber PVC profiles that minimize heat transfer</li>
                    <li>Double or triple glazing with insulating gas</li>
                    <li>High-quality sealing systems to prevent air leakage</li>
                    <li>Special frame design to reduce thermal bridging</li>
                </ul>
                <p>Our triple-glazed windows meet contemporary energy efficiency standards for modern buildings. The investment in these solutions is offset by heating cost savings and improved year-round comfort.</p>
                <p>For specific products like our THERMO DIAMOND LUMINA doors, we achieve thermal performance values (Ud) as low as 1.2 W/m²K.</p>
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">Do you offer installation services and what maintenance is required?</div>
            <div class="faq-answer">
                <p><strong>Installation:</strong> Yes, we provide professional installation by trained specialists who ensure proper fitting, sealing, and operation of all our products.</p>
                <p><strong>Maintenance:</strong> Our windows and doors are designed to be low-maintenance:</p>
                <ul style="margin: 10px 0 10px 20px;">
                    <li>Clean frames with mild soap solution twice yearly</li>
                    <li>Clean glass with appropriate cleaner</li>
                    <li>Lubricate hardware annually with silicone spray</li>
                    <li>Check drainage channels and seals periodically</li>
                </ul>
                <p>Our products do not require painting or intensive maintenance procedures. For specific care instructions, please refer to the maintenance guide provided upon installation.</p>
            </div>
        </div>
    </div>

    <div class="contact-section">
        <h2 class="contact-title">Need more information?</h2>
        <p class="contact-text">Contact our team for any additional questions about our products or services.</p>
        <a href="/contact" class="submit-button">Contact Us</a>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const faqItems = document.querySelectorAll('.faq-item');

        faqItems.forEach(item => {
            const question = item.querySelector('.faq-question');

            question.addEventListener('click', () => {
                const isOpen = item.classList.contains('active');

                faqItems.forEach(faqItem => {
                    faqItem.classList.remove('active');
                });

                if (!isOpen) {
                    item.classList.add('active');
                }
            });
        });
    });
</script>