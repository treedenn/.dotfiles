function setPulseAudioDefaults {
  local volume=$1

#	# Input default: GoXLR Chat
  pactl set-default-source alsa_input.usb-TC-Helicon_GoXLR-00.HiFi__goxlr_stereo_in_GoXLR_0_2_3__source

#	# Output default: GoXLR System
	pactl set-default-sink alsa_output.usb-TC-Helicon_GoXLR-00.HiFi__goxlr_stereo_out_GoXLR_0_0_1__sink

#	# Output: GoXLR Sample
	pactl set-sink-volume alsa_output.usb-TC-Helicon_GoXLR-00.HiFi__goxlr_stereo_out_GoXLR_0_8_9__sink ${volume}%

#	# Output: GoXLR Chat
	pactl set-sink-volume alsa_output.usb-TC-Helicon_GoXLR-00.HiFi__goxlr_stereo_out_GoXLR_0_4_5__sink ${volume}%

#	# Output: GoXLR Music
	pactl set-sink-volume alsa_output.usb-TC-Helicon_GoXLR-00.HiFi__goxlr_stereo_out_GoXLR_0_6_7__sink ${volume}%

#	# Output: GoXLR Game
	pactl set-sink-volume alsa_output.usb-TC-Helicon_GoXLR-00.HiFi__goxlr_stereo_out_GoXLR_0_2_3__sink ${volume}%

#	# Output: GoXLR System
	pactl set-sink-volume alsa_output.usb-TC-Helicon_GoXLR-00.HiFi__goxlr_stereo_out_GoXLR_0_0_1__sink ${volume}%
}

setPulseAudioDefaults 90

export BROWSER="brave"
export EDITOR="neovim"

