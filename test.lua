 
function on_msg_receive (msg)
      if msg.out then
          return
      end
      if (msg.text=='ping') then
         send_msg (msg.from.print_name, 'pong', ok_cb, false)
      end
      if (msg.text == '!vid') then
        send_msg(msg.from.print_name, 'take a 10sec. video  for you...',ok_cb, false)
        os.execute("./tel2.sh")
        send_video(msg.from.print_name, '/root/tg/vid.mp4', ok_cb, false)
        return
      end
      if (msg.text == '!pic') then
         send_msg(msg.from.print_name, 'Foto kommt', ok_cb, false)
         os.execute("./tel1.sh")
         send_photo(msg.from.print_name, 't2.jpg',ok_cb, false)
         return
      end

end
