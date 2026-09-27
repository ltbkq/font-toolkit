#!/usr/bin/env python3
import subprocess
import json
import os
from collections import defaultdict

def get_fonts():
    result = subprocess.run(['fc-list'], capture_output=True, text=True)
    lines = result.stdout.strip().split('\n')
    
    fonts = defaultdict(lambda: {'files': [], 'categories': set()})
    
    for line in lines:
        if ':' not in line:
            continue
        parts = line.split(':')
        font_path = parts[0].strip()
        rest = ':'.join(parts[1:])
        
        # Parse font name and styles
        # Format: "Font Name, Alternative Name: style1, style2, ..."
        name_part, styles_part = rest.split(':', 1) if ':' in rest else (rest, '')
        
        # Get category from path
        category = 'other'
        path_lower = font_path.lower()
        if 'winfonts' in path_lower or 'msttcorefonts' in path_lower:
            category = 'windows'
        elif 'noto' in path_lower:
            category = 'noto'
        elif 'ubuntu' in path_lower:
            category = 'ubuntu'
        elif 'dejavu' in path_lower:
            category = 'dejavu'
        elif 'liberation' in path_lower:
            category = 'liberation'
        elif 'freefont' in path_lower or 'wqy' in path_lower:
            category = 'chinese'
        elif 'lxp' in path_lower or 'lxgw' in path_lower:
            category = 'chinese'
        elif 'arphic' in path_lower:
            category = 'chinese'
        elif 'noto' in path_lower:
            category = 'noto'
        
        font_name = name_part.strip().split(',')[0]
        fonts[font_name]['files'].append(font_path)
        fonts[font_name]['category'] = category
    
    return fonts

if __name__ == '__main__':
    fonts = get_fonts()
    print(f"Found {len(fonts)} font families")
