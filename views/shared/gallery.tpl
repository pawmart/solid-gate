<div class="gallery-tabs">
    <button class="tab-btn active" data-category="all">All</button>
    <button class="tab-btn" data-category="windows">Windows</button>
    <button class="tab-btn" data-category="blinds">Blinds</button>
    <button class="tab-btn" data-category="doors">Doors</button>
</div>

<div class="gallery-grid">
    {{range $category, $files := .}}
    {{range $file := $files}}
    <div class="gallery-item" data-category="{{$category}}">
        <div class="gallery-image">
            <img src="{{$file}}" alt="{{$category}} image" />
        </div>
    </div>
    {{end}}
    {{end}}
</div>

<!-- Image Zoom -->
<div class="lightbox">
    <div class="lightbox-content">
        <button class="lightbox-close">×</button>
        <img class="lightbox-image" src=""/>
    </div>
</div>

<script>
    document.querySelectorAll('.tab-btn').forEach(button => {
        button.addEventListener('click', () => {
            document.querySelectorAll('.tab-btn').forEach(btn => {
                btn.classList.remove('active');
            });
            button.classList.add('active');
            const category = button.getAttribute('data-category');
            document.querySelectorAll('.gallery-item').forEach(item => {
                if (category === 'all' || item.getAttribute('data-category') === category) {
                    item.style.display = 'block';
                } else {
                    item.style.display = 'none';
                }
            });
        });
    });

    const lightbox = document.querySelector('.lightbox');
    const lightboxImage = document.querySelector('.lightbox-image');
    const lightboxClose = document.querySelector('.lightbox-close');

    document.querySelectorAll('.gallery-item').forEach(item => {
        item.addEventListener('click', () => {
            const image = item.querySelector('img');
            lightboxImage.src = image.src;
            lightboxImage.alt = image.alt;
            lightbox.classList.add('active');
        });
    });

    lightboxClose.addEventListener('click', () => {
        lightbox.classList.remove('active');
    });

    lightbox.addEventListener('click', (e) => {
        if (e.target === lightbox) {
            lightbox.classList.remove('active');
        }
    });

    document.addEventListener('keydown', (e) => {
        if (e.key === 'Escape' && lightbox.classList.contains('active')) {
            lightbox.classList.remove('active');
        }
    });
</script>