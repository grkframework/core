let hudElement = null;
let currentPosition = 'top-right';

window.addEventListener('message', (event) => {
    const data = event.data;

    if (!hudElement) {
        hudElement = document.getElementById('grk-hud');
    }

    if (data.action === 'init') {
        document.getElementById('version').textContent = data.version;
        setPosition(data.position);
        showHUD();
        fetch(`https://${GetParentResourceName()}/grk_ready`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({})
        });
    }

    if (data.action === 'toggle') {
        if (data.show) showHUD(); else hideHUD();
    }
});

function setPosition(pos) {
    if (!hudElement) return;
    hudElement.classList.remove('top-right', 'top-left', 'bottom-right', 'bottom-left');
    const valid = ['top-right', 'top-left', 'bottom-right', 'bottom-left'].includes(pos) ? pos : 'top-right';
    hudElement.classList.add(valid);
    currentPosition = valid;
}

function showHUD() {
    if (!hudElement) return;
    hudElement.classList.remove('hidden');
    document.getElementById('status').textContent = 'ONLINE';
}

function hideHUD() {
    if (!hudElement) return;
    hudElement.classList.add('hidden');
    document.getElementById('status').textContent = 'OFFLINE';
}

// Debug: Press F9 to toggle HUD
document.addEventListener('keydown', (e) => {
    if (e.key === 'F9') {
        fetch(`https://${GetParentResourceName()}/toggle_hud`, {
            method: 'POST'
        });
    }
});
