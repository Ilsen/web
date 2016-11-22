CONFIG = {
    'working_dir': '/home/box/web/ask/',
    # 'user': 'www-data',
    # 'group': 'www-data',
    'args': (
        '--bind=0.0.0.0:8000',
        '--workers=4',
        '--timeout=30',
        'ask.wsgi',
    ),
}
