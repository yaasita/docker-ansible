# ansibleインストールイメージ

## 使い方

1. authorized_keysに自分の公開鍵を置く

        cp /path/to/authorized_keys ./authorized_keys
2. ansibleというイメージをビルド

        docker build -t ansible .
3. 実行

        docker run -p 22022:22 -d ansible
4. sshでログイン
    
        ssh localhost -lroot -p22022
5. ansible実行
        
        ansible-playbook hoge.yml


