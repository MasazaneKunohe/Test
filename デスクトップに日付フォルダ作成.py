import os
from datetime import datetime

# デスクトップのパスを取得
desktop_path = os.path.join(os.path.expanduser("~"), "Desktop")

# 現在の日付をyyyymmdd形式で取得
current_date = datetime.now().strftime("%Y%m%d")

# フォルダのパスを作成
folder_path = os.path.join(desktop_path, current_date)

# フォルダを作成
os.makedirs(folder_path, exist_ok=True)

print(f"フォルダ '{folder_path}' を作成しました。")