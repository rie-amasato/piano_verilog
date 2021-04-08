# piano_verilog  

FPGAで簡単なピアノの製作  
  
↓動作風景。クリックでmp4ファイルを開く  
(アップロードされているmp4ファイルと同じもの)  
https://user-images.githubusercontent.com/51439946/113830527-ab19a900-97c1-11eb-8136-5ea8aa296222.mp4


コード本体はpiano.vファイル。  
クローンしてプロジェクトとして読み込む場合はpiano.qpfファイルを読み込む  
20 kHzまでクロックを落としたのちボタンに合わせた音階の周波数を出力する  
  
RSTボタンが押されているとミ～ラまで押されていないとドからファまでの音が出ます  
カエルの歌を演奏するために。  


FPGAボード：DE0-CV  
書き込みソフト:Quartus Prime 17.0.0.595 Lite Edition  
を使用  

(c) Yumi-Amahane
