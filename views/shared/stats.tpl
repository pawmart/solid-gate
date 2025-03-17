<div class="stat-bar">
    <div class="stats-wrapper">
        <div class="stat-item">
            <div class="icon-circle">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="m3 9 9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                    <polyline points="9 22 9 12 15 12 15 22"></polyline>
                </svg>
            </div>
            <div class="stat-content">
                <div class="stat-value">24,800</div>
                <div class="stat-unit">m²</div>
                <div class="stat-label">Production Area</div>
            </div>
        </div>

        <div class="stat-item">
            <div class="icon-circle">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <rect width="18" height="18" x="3" y="4" rx="2" ry="2"></rect>
                    <line x1="16" x2="16" y1="2" y2="6"></line>
                    <line x1="8" x2="8" y1="2" y2="6"></line>
                    <line x1="3" x2="21" y1="10" y2="10"></line>
                </svg>
            </div>
            <div class="stat-content">
                <div class="stat-value">42,300</div>
                <div class="stat-unit">m²</div>
                <div class="stat-label">Total Area</div>
            </div>
        </div>

        <div class="stat-item">
            <div class="icon-circle">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M19 21v-2a4 4 0 0 0-4-4H9a4 4 0 0 0-4 4v2"></path>
                    <circle cx="12" cy="7" r="4"></circle>
                </svg>
            </div>
            <div class="stat-content">
                <div class="stat-value">256</div>
                <div class="stat-unit">people</div>
                <div class="stat-label">Employees</div>
            </div>
        </div>

        <div class="stat-item">
            <div class="icon-circle">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <circle cx="12" cy="12" r="10"></circle>
                    <path d="M8 14s1.5 2 4 2 4-2 4-2"></path>
                    <line x1="9" x2="9.01" y1="9" y2="9"></line>
                    <line x1="15" x2="15.01" y1="9" y2="9"></line>
                </svg>
            </div>
            <div class="stat-content">
                <div class="stat-value">5,000</div>
                <div class="stat-unit">tons</div>
                <div class="stat-label">Sheets per year</div>
            </div>
        </div>
    </div>
</div>

<style>
    .stat-bar {
        width: 100%;
        background-image: url('/static/img/slider2.webp');
        background-size: cover;
        background-position: center;
        position: relative;
        padding: 80px 0;
        color: white;
        min-height: 400px;
        display: flex;
        align-items: center;
    }

    .stat-bar::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: linear-gradient(to right, rgba(14, 52, 102, 0.85), rgba(14, 52, 102, 0.7));
        z-index: 1;
    }

    .stats-wrapper {
        width: 100%;
        display: flex;
        flex-direction: column;
        align-items: center;
        margin: 0 auto;
        position: relative;
        z-index: 2;
    }

    .stat-item {
        display: flex;
        align-items: center;
        margin: 15px 0;
        width: 220px;
    }

    .icon-circle {
        width: 50px;
        height: 50px;
        background-color: rgba(255, 255, 255, 0.1);
        border: 1px solid rgba(255, 255, 255, 0.3);
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin-right: 15px;
        transition: background-color 0.3s ease;
    }

    .stat-item:hover .icon-circle {
        background-color: rgba(255, 255, 255, 0.3);
    }

    .icon-circle svg {
        width: 24px;
        height: 24px;
    }

    .stat-content {
        display: flex;
        flex-direction: column;
    }

    .stat-value {
        font-size: 24px;
        font-weight: bold;
        line-height: 1.1;
    }

    .stat-unit {
        font-size: 12px;
        color: rgba(255, 255, 255, 0.7);
        margin-bottom: 4px;
    }

    .stat-label {
        font-size: 14px;
        font-weight: bold;
    }

    @media (min-width: 768px) {
        .stats-wrapper {
            flex-direction: row;
            justify-content: center;
        }

        .stat-item {
            margin: 0 30px;
        }
    }
</style>