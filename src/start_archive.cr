require "../src/webcam_downloader"

# http://www.foto-webcam.eu/
# TODO
# flattach
# lorenzalm
# kronplatz - !!!
# gantkofel - !!!
# meran - !!!
# schareck - !
# gletscher-sued - !
# obervellach - !!
# ederplan - !!!
# winklern - !!
# burgstalleralm
# heiligenblut
# meran - !!!
# konkordiahuette
# hochkar
# gernkogel - !
# hochkoenig
# zellamsee - !!
# schroecken
# innichen-Leitlhof
# BrauneckSpeichersee
# wallberg - !!!
# http://www.foto.webcam/suedtirol/vinschgau/mals/hotel-watles/12/webcam?date=2015/11/26/0240
# http://www.foto.webcam/suedtirol/groeden/st-christina/dorfhotel-beludei/6/webcam?date=2015/11/26/2040

# NOW ankogel-sued - !!!

# DONE
# DONE full 2015 - lienz - !!!

download_hd = true

w = WebcamDownloader::ArchiveDownloader.new
w.logger.level = Logger::DEBUG
w.server_host = "http://www.foto-webcam.eu/"
w.server_webcam_path = "webcam/"
w.server_list_path = "webcam/include/list.php"
w.name = "ankogel-sued"

# downloading hd
if download_hd == true
  w.format = "hd"
  w.resize = false
  w.sleep_between_lists = 4
  w.sleep_between_image_download = 5
end

# downloading full
if download_hd == false
  w.format = "fu"
  w.sleep_between_lists = 10
  w.sleep_between_image_download = 10
  w.resize = true
  w.resize_jpeg_quality = 85
end

w.make_it_so
