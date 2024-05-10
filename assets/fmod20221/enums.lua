local require=simpRequire(((...):gsub("[^%.]*$", "")))

---@class FMOD.Master
local M=require("master")
local C=M.C

M.FMOD_THREAD_TYPE_MIXER=C.FMOD_THREAD_TYPE_MIXER
M.FMOD_THREAD_TYPE_FEEDER=C.FMOD_THREAD_TYPE_FEEDER
M.FMOD_THREAD_TYPE_STREAM=C.FMOD_THREAD_TYPE_STREAM
M.FMOD_THREAD_TYPE_FILE=C.FMOD_THREAD_TYPE_FILE
M.FMOD_THREAD_TYPE_NONBLOCKING=C.FMOD_THREAD_TYPE_NONBLOCKING
M.FMOD_THREAD_TYPE_RECORD=C.FMOD_THREAD_TYPE_RECORD
M.FMOD_THREAD_TYPE_GEOMETRY=C.FMOD_THREAD_TYPE_GEOMETRY
M.FMOD_THREAD_TYPE_PROFILER=C.FMOD_THREAD_TYPE_PROFILER
M.FMOD_THREAD_TYPE_STUDIO_UPDATE=C.FMOD_THREAD_TYPE_STUDIO_UPDATE
M.FMOD_THREAD_TYPE_STUDIO_LOAD_BANK=C.FMOD_THREAD_TYPE_STUDIO_LOAD_BANK
M.FMOD_THREAD_TYPE_STUDIO_LOAD_SAMPLE=C.FMOD_THREAD_TYPE_STUDIO_LOAD_SAMPLE
M.FMOD_THREAD_TYPE_CONVOLUTION1=C.FMOD_THREAD_TYPE_CONVOLUTION1
M.FMOD_THREAD_TYPE_CONVOLUTION2=C.FMOD_THREAD_TYPE_CONVOLUTION2
M.FMOD_THREAD_TYPE_MAX=C.FMOD_THREAD_TYPE_MAX
M.FMOD_THREAD_TYPE_FORCEINT=C.FMOD_THREAD_TYPE_FORCEINT
M.FMOD_OK=C.FMOD_OK
M.FMOD_ERR_BADCOMMAND=C.FMOD_ERR_BADCOMMAND
M.FMOD_ERR_CHANNEL_ALLOC=C.FMOD_ERR_CHANNEL_ALLOC
M.FMOD_ERR_CHANNEL_STOLEN=C.FMOD_ERR_CHANNEL_STOLEN
M.FMOD_ERR_DMA=C.FMOD_ERR_DMA
M.FMOD_ERR_DSP_CONNECTION=C.FMOD_ERR_DSP_CONNECTION
M.FMOD_ERR_DSP_DONTPROCESS=C.FMOD_ERR_DSP_DONTPROCESS
M.FMOD_ERR_DSP_FORMAT=C.FMOD_ERR_DSP_FORMAT
M.FMOD_ERR_DSP_INUSE=C.FMOD_ERR_DSP_INUSE
M.FMOD_ERR_DSP_NOTFOUND=C.FMOD_ERR_DSP_NOTFOUND
M.FMOD_ERR_DSP_RESERVED=C.FMOD_ERR_DSP_RESERVED
M.FMOD_ERR_DSP_SILENCE=C.FMOD_ERR_DSP_SILENCE
M.FMOD_ERR_DSP_TYPE=C.FMOD_ERR_DSP_TYPE
M.FMOD_ERR_FILE_BAD=C.FMOD_ERR_FILE_BAD
M.FMOD_ERR_FILE_COULDNOTSEEK=C.FMOD_ERR_FILE_COULDNOTSEEK
M.FMOD_ERR_FILE_DISKEJECTED=C.FMOD_ERR_FILE_DISKEJECTED
M.FMOD_ERR_FILE_EOF=C.FMOD_ERR_FILE_EOF
M.FMOD_ERR_FILE_ENDOFDATA=C.FMOD_ERR_FILE_ENDOFDATA
M.FMOD_ERR_FILE_NOTFOUND=C.FMOD_ERR_FILE_NOTFOUND
M.FMOD_ERR_FORMAT=C.FMOD_ERR_FORMAT
M.FMOD_ERR_HEADER_MISMATCH=C.FMOD_ERR_HEADER_MISMATCH
M.FMOD_ERR_HTTP=C.FMOD_ERR_HTTP
M.FMOD_ERR_HTTP_ACCESS=C.FMOD_ERR_HTTP_ACCESS
M.FMOD_ERR_HTTP_PROXY_AUTH=C.FMOD_ERR_HTTP_PROXY_AUTH
M.FMOD_ERR_HTTP_SERVER_ERROR=C.FMOD_ERR_HTTP_SERVER_ERROR
M.FMOD_ERR_HTTP_TIMEOUT=C.FMOD_ERR_HTTP_TIMEOUT
M.FMOD_ERR_INITIALIZATION=C.FMOD_ERR_INITIALIZATION
M.FMOD_ERR_INITIALIZED=C.FMOD_ERR_INITIALIZED
M.FMOD_ERR_INTERNAL=C.FMOD_ERR_INTERNAL
M.FMOD_ERR_INVALID_FLOAT=C.FMOD_ERR_INVALID_FLOAT
M.FMOD_ERR_INVALID_HANDLE=C.FMOD_ERR_INVALID_HANDLE
M.FMOD_ERR_INVALID_PARAM=C.FMOD_ERR_INVALID_PARAM
M.FMOD_ERR_INVALID_POSITION=C.FMOD_ERR_INVALID_POSITION
M.FMOD_ERR_INVALID_SPEAKER=C.FMOD_ERR_INVALID_SPEAKER
M.FMOD_ERR_INVALID_SYNCPOINT=C.FMOD_ERR_INVALID_SYNCPOINT
M.FMOD_ERR_INVALID_THREAD=C.FMOD_ERR_INVALID_THREAD
M.FMOD_ERR_INVALID_VECTOR=C.FMOD_ERR_INVALID_VECTOR
M.FMOD_ERR_MAXAUDIBLE=C.FMOD_ERR_MAXAUDIBLE
M.FMOD_ERR_MEMORY=C.FMOD_ERR_MEMORY
M.FMOD_ERR_MEMORY_CANTPOINT=C.FMOD_ERR_MEMORY_CANTPOINT
M.FMOD_ERR_NEEDS3D=C.FMOD_ERR_NEEDS3D
M.FMOD_ERR_NEEDSHARDWARE=C.FMOD_ERR_NEEDSHARDWARE
M.FMOD_ERR_NET_CONNECT=C.FMOD_ERR_NET_CONNECT
M.FMOD_ERR_NET_SOCKET_ERROR=C.FMOD_ERR_NET_SOCKET_ERROR
M.FMOD_ERR_NET_URL=C.FMOD_ERR_NET_URL
M.FMOD_ERR_NET_WOULD_BLOCK=C.FMOD_ERR_NET_WOULD_BLOCK
M.FMOD_ERR_NOTREADY=C.FMOD_ERR_NOTREADY
M.FMOD_ERR_OUTPUT_ALLOCATED=C.FMOD_ERR_OUTPUT_ALLOCATED
M.FMOD_ERR_OUTPUT_CREATEBUFFER=C.FMOD_ERR_OUTPUT_CREATEBUFFER
M.FMOD_ERR_OUTPUT_DRIVERCALL=C.FMOD_ERR_OUTPUT_DRIVERCALL
M.FMOD_ERR_OUTPUT_FORMAT=C.FMOD_ERR_OUTPUT_FORMAT
M.FMOD_ERR_OUTPUT_INIT=C.FMOD_ERR_OUTPUT_INIT
M.FMOD_ERR_OUTPUT_NODRIVERS=C.FMOD_ERR_OUTPUT_NODRIVERS
M.FMOD_ERR_PLUGIN=C.FMOD_ERR_PLUGIN
M.FMOD_ERR_PLUGIN_MISSING=C.FMOD_ERR_PLUGIN_MISSING
M.FMOD_ERR_PLUGIN_RESOURCE=C.FMOD_ERR_PLUGIN_RESOURCE
M.FMOD_ERR_PLUGIN_VERSION=C.FMOD_ERR_PLUGIN_VERSION
M.FMOD_ERR_RECORD=C.FMOD_ERR_RECORD
M.FMOD_ERR_REVERB_CHANNELGROUP=C.FMOD_ERR_REVERB_CHANNELGROUP
M.FMOD_ERR_REVERB_INSTANCE=C.FMOD_ERR_REVERB_INSTANCE
M.FMOD_ERR_SUBSOUNDS=C.FMOD_ERR_SUBSOUNDS
M.FMOD_ERR_SUBSOUND_ALLOCATED=C.FMOD_ERR_SUBSOUND_ALLOCATED
M.FMOD_ERR_SUBSOUND_CANTMOVE=C.FMOD_ERR_SUBSOUND_CANTMOVE
M.FMOD_ERR_TAGNOTFOUND=C.FMOD_ERR_TAGNOTFOUND
M.FMOD_ERR_TOOMANYCHANNELS=C.FMOD_ERR_TOOMANYCHANNELS
M.FMOD_ERR_TRUNCATED=C.FMOD_ERR_TRUNCATED
M.FMOD_ERR_UNIMPLEMENTED=C.FMOD_ERR_UNIMPLEMENTED
M.FMOD_ERR_UNINITIALIZED=C.FMOD_ERR_UNINITIALIZED
M.FMOD_ERR_UNSUPPORTED=C.FMOD_ERR_UNSUPPORTED
M.FMOD_ERR_VERSION=C.FMOD_ERR_VERSION
M.FMOD_ERR_EVENT_ALREADY_LOADED=C.FMOD_ERR_EVENT_ALREADY_LOADED
M.FMOD_ERR_EVENT_LIVEUPDATE_BUSY=C.FMOD_ERR_EVENT_LIVEUPDATE_BUSY
M.FMOD_ERR_EVENT_LIVEUPDATE_MISMATCH=C.FMOD_ERR_EVENT_LIVEUPDATE_MISMATCH
M.FMOD_ERR_EVENT_LIVEUPDATE_TIMEOUT=C.FMOD_ERR_EVENT_LIVEUPDATE_TIMEOUT
M.FMOD_ERR_EVENT_NOTFOUND=C.FMOD_ERR_EVENT_NOTFOUND
M.FMOD_ERR_STUDIO_UNINITIALIZED=C.FMOD_ERR_STUDIO_UNINITIALIZED
M.FMOD_ERR_STUDIO_NOT_LOADED=C.FMOD_ERR_STUDIO_NOT_LOADED
M.FMOD_ERR_INVALID_STRING=C.FMOD_ERR_INVALID_STRING
M.FMOD_ERR_ALREADY_LOCKED=C.FMOD_ERR_ALREADY_LOCKED
M.FMOD_ERR_NOT_LOCKED=C.FMOD_ERR_NOT_LOCKED
M.FMOD_ERR_RECORD_DISCONNECTED=C.FMOD_ERR_RECORD_DISCONNECTED
M.FMOD_ERR_TOOMANYSAMPLES=C.FMOD_ERR_TOOMANYSAMPLES
M.FMOD_RESULT_FORCEINT=C.FMOD_RESULT_FORCEINT
M.FMOD_CHANNELCONTROL_CHANNEL=C.FMOD_CHANNELCONTROL_CHANNEL
M.FMOD_CHANNELCONTROL_CHANNELGROUP=C.FMOD_CHANNELCONTROL_CHANNELGROUP
M.FMOD_CHANNELCONTROL_MAX=C.FMOD_CHANNELCONTROL_MAX
M.FMOD_CHANNELCONTROL_FORCEINT=C.FMOD_CHANNELCONTROL_FORCEINT
M.FMOD_OUTPUTTYPE_AUTODETECT=C.FMOD_OUTPUTTYPE_AUTODETECT
M.FMOD_OUTPUTTYPE_UNKNOWN=C.FMOD_OUTPUTTYPE_UNKNOWN
M.FMOD_OUTPUTTYPE_NOSOUND=C.FMOD_OUTPUTTYPE_NOSOUND
M.FMOD_OUTPUTTYPE_WAVWRITER=C.FMOD_OUTPUTTYPE_WAVWRITER
M.FMOD_OUTPUTTYPE_NOSOUND_NRT=C.FMOD_OUTPUTTYPE_NOSOUND_NRT
M.FMOD_OUTPUTTYPE_WAVWRITER_NRT=C.FMOD_OUTPUTTYPE_WAVWRITER_NRT
M.FMOD_OUTPUTTYPE_WASAPI=C.FMOD_OUTPUTTYPE_WASAPI
M.FMOD_OUTPUTTYPE_ASIO=C.FMOD_OUTPUTTYPE_ASIO
M.FMOD_OUTPUTTYPE_PULSEAUDIO=C.FMOD_OUTPUTTYPE_PULSEAUDIO
M.FMOD_OUTPUTTYPE_ALSA=C.FMOD_OUTPUTTYPE_ALSA
M.FMOD_OUTPUTTYPE_COREAUDIO=C.FMOD_OUTPUTTYPE_COREAUDIO
M.FMOD_OUTPUTTYPE_AUDIOTRACK=C.FMOD_OUTPUTTYPE_AUDIOTRACK
M.FMOD_OUTPUTTYPE_OPENSL=C.FMOD_OUTPUTTYPE_OPENSL
M.FMOD_OUTPUTTYPE_AUDIOOUT=C.FMOD_OUTPUTTYPE_AUDIOOUT
M.FMOD_OUTPUTTYPE_AUDIO3D=C.FMOD_OUTPUTTYPE_AUDIO3D
M.FMOD_OUTPUTTYPE_WEBAUDIO=C.FMOD_OUTPUTTYPE_WEBAUDIO
M.FMOD_OUTPUTTYPE_NNAUDIO=C.FMOD_OUTPUTTYPE_NNAUDIO
M.FMOD_OUTPUTTYPE_WINSONIC=C.FMOD_OUTPUTTYPE_WINSONIC
M.FMOD_OUTPUTTYPE_AAUDIO=C.FMOD_OUTPUTTYPE_AAUDIO
M.FMOD_OUTPUTTYPE_AUDIOWORKLET=C.FMOD_OUTPUTTYPE_AUDIOWORKLET
M.FMOD_OUTPUTTYPE_PHASE=C.FMOD_OUTPUTTYPE_PHASE
M.FMOD_OUTPUTTYPE_OHAUDIO=C.FMOD_OUTPUTTYPE_OHAUDIO
M.FMOD_OUTPUTTYPE_MAX=C.FMOD_OUTPUTTYPE_MAX
M.FMOD_OUTPUTTYPE_FORCEINT=C.FMOD_OUTPUTTYPE_FORCEINT
M.FMOD_DEBUG_MODE_TTY=C.FMOD_DEBUG_MODE_TTY
M.FMOD_DEBUG_MODE_FILE=C.FMOD_DEBUG_MODE_FILE
M.FMOD_DEBUG_MODE_CALLBACK=C.FMOD_DEBUG_MODE_CALLBACK
M.FMOD_DEBUG_MODE_FORCEINT=C.FMOD_DEBUG_MODE_FORCEINT
M.FMOD_SPEAKERMODE_DEFAULT=C.FMOD_SPEAKERMODE_DEFAULT
M.FMOD_SPEAKERMODE_RAW=C.FMOD_SPEAKERMODE_RAW
M.FMOD_SPEAKERMODE_MONO=C.FMOD_SPEAKERMODE_MONO
M.FMOD_SPEAKERMODE_STEREO=C.FMOD_SPEAKERMODE_STEREO
M.FMOD_SPEAKERMODE_QUAD=C.FMOD_SPEAKERMODE_QUAD
M.FMOD_SPEAKERMODE_SURROUND=C.FMOD_SPEAKERMODE_SURROUND
M.FMOD_SPEAKERMODE_5POINT1=C.FMOD_SPEAKERMODE_5POINT1
M.FMOD_SPEAKERMODE_7POINT1=C.FMOD_SPEAKERMODE_7POINT1
M.FMOD_SPEAKERMODE_7POINT1POINT4=C.FMOD_SPEAKERMODE_7POINT1POINT4
M.FMOD_SPEAKERMODE_MAX=C.FMOD_SPEAKERMODE_MAX
M.FMOD_SPEAKERMODE_FORCEINT=C.FMOD_SPEAKERMODE_FORCEINT
M.FMOD_SPEAKER_NONE=C.FMOD_SPEAKER_NONE
M.FMOD_SPEAKER_FRONT_LEFT=C.FMOD_SPEAKER_FRONT_LEFT
M.FMOD_SPEAKER_FRONT_RIGHT=C.FMOD_SPEAKER_FRONT_RIGHT
M.FMOD_SPEAKER_FRONT_CENTER=C.FMOD_SPEAKER_FRONT_CENTER
M.FMOD_SPEAKER_LOW_FREQUENCY=C.FMOD_SPEAKER_LOW_FREQUENCY
M.FMOD_SPEAKER_SURROUND_LEFT=C.FMOD_SPEAKER_SURROUND_LEFT
M.FMOD_SPEAKER_SURROUND_RIGHT=C.FMOD_SPEAKER_SURROUND_RIGHT
M.FMOD_SPEAKER_BACK_LEFT=C.FMOD_SPEAKER_BACK_LEFT
M.FMOD_SPEAKER_BACK_RIGHT=C.FMOD_SPEAKER_BACK_RIGHT
M.FMOD_SPEAKER_TOP_FRONT_LEFT=C.FMOD_SPEAKER_TOP_FRONT_LEFT
M.FMOD_SPEAKER_TOP_FRONT_RIGHT=C.FMOD_SPEAKER_TOP_FRONT_RIGHT
M.FMOD_SPEAKER_TOP_BACK_LEFT=C.FMOD_SPEAKER_TOP_BACK_LEFT
M.FMOD_SPEAKER_TOP_BACK_RIGHT=C.FMOD_SPEAKER_TOP_BACK_RIGHT
M.FMOD_SPEAKER_MAX=C.FMOD_SPEAKER_MAX
M.FMOD_SPEAKER_FORCEINT=C.FMOD_SPEAKER_FORCEINT
M.FMOD_CHANNELORDER_DEFAULT=C.FMOD_CHANNELORDER_DEFAULT
M.FMOD_CHANNELORDER_WAVEFORMAT=C.FMOD_CHANNELORDER_WAVEFORMAT
M.FMOD_CHANNELORDER_PROTOOLS=C.FMOD_CHANNELORDER_PROTOOLS
M.FMOD_CHANNELORDER_ALLMONO=C.FMOD_CHANNELORDER_ALLMONO
M.FMOD_CHANNELORDER_ALLSTEREO=C.FMOD_CHANNELORDER_ALLSTEREO
M.FMOD_CHANNELORDER_ALSA=C.FMOD_CHANNELORDER_ALSA
M.FMOD_CHANNELORDER_MAX=C.FMOD_CHANNELORDER_MAX
M.FMOD_CHANNELORDER_FORCEINT=C.FMOD_CHANNELORDER_FORCEINT
M.FMOD_PLUGINTYPE_OUTPUT=C.FMOD_PLUGINTYPE_OUTPUT
M.FMOD_PLUGINTYPE_CODEC=C.FMOD_PLUGINTYPE_CODEC
M.FMOD_PLUGINTYPE_DSP=C.FMOD_PLUGINTYPE_DSP
M.FMOD_PLUGINTYPE_MAX=C.FMOD_PLUGINTYPE_MAX
M.FMOD_PLUGINTYPE_FORCEINT=C.FMOD_PLUGINTYPE_FORCEINT
M.FMOD_SOUND_TYPE_UNKNOWN=C.FMOD_SOUND_TYPE_UNKNOWN
M.FMOD_SOUND_TYPE_AIFF=C.FMOD_SOUND_TYPE_AIFF
M.FMOD_SOUND_TYPE_ASF=C.FMOD_SOUND_TYPE_ASF
M.FMOD_SOUND_TYPE_DLS=C.FMOD_SOUND_TYPE_DLS
M.FMOD_SOUND_TYPE_FLAC=C.FMOD_SOUND_TYPE_FLAC
M.FMOD_SOUND_TYPE_FSB=C.FMOD_SOUND_TYPE_FSB
M.FMOD_SOUND_TYPE_IT=C.FMOD_SOUND_TYPE_IT
M.FMOD_SOUND_TYPE_MIDI=C.FMOD_SOUND_TYPE_MIDI
M.FMOD_SOUND_TYPE_MOD=C.FMOD_SOUND_TYPE_MOD
M.FMOD_SOUND_TYPE_MPEG=C.FMOD_SOUND_TYPE_MPEG
M.FMOD_SOUND_TYPE_OGGVORBIS=C.FMOD_SOUND_TYPE_OGGVORBIS
M.FMOD_SOUND_TYPE_PLAYLIST=C.FMOD_SOUND_TYPE_PLAYLIST
M.FMOD_SOUND_TYPE_RAW=C.FMOD_SOUND_TYPE_RAW
M.FMOD_SOUND_TYPE_S3M=C.FMOD_SOUND_TYPE_S3M
M.FMOD_SOUND_TYPE_USER=C.FMOD_SOUND_TYPE_USER
M.FMOD_SOUND_TYPE_WAV=C.FMOD_SOUND_TYPE_WAV
M.FMOD_SOUND_TYPE_XM=C.FMOD_SOUND_TYPE_XM
M.FMOD_SOUND_TYPE_XMA=C.FMOD_SOUND_TYPE_XMA
M.FMOD_SOUND_TYPE_AUDIOQUEUE=C.FMOD_SOUND_TYPE_AUDIOQUEUE
M.FMOD_SOUND_TYPE_AT9=C.FMOD_SOUND_TYPE_AT9
M.FMOD_SOUND_TYPE_VORBIS=C.FMOD_SOUND_TYPE_VORBIS
M.FMOD_SOUND_TYPE_MEDIA_FOUNDATION=C.FMOD_SOUND_TYPE_MEDIA_FOUNDATION
M.FMOD_SOUND_TYPE_MEDIACODEC=C.FMOD_SOUND_TYPE_MEDIACODEC
M.FMOD_SOUND_TYPE_FADPCM=C.FMOD_SOUND_TYPE_FADPCM
M.FMOD_SOUND_TYPE_OPUS=C.FMOD_SOUND_TYPE_OPUS
M.FMOD_SOUND_TYPE_MAX=C.FMOD_SOUND_TYPE_MAX
M.FMOD_SOUND_TYPE_FORCEINT=C.FMOD_SOUND_TYPE_FORCEINT
M.FMOD_SOUND_FORMAT_NONE=C.FMOD_SOUND_FORMAT_NONE
M.FMOD_SOUND_FORMAT_PCM8=C.FMOD_SOUND_FORMAT_PCM8
M.FMOD_SOUND_FORMAT_PCM16=C.FMOD_SOUND_FORMAT_PCM16
M.FMOD_SOUND_FORMAT_PCM24=C.FMOD_SOUND_FORMAT_PCM24
M.FMOD_SOUND_FORMAT_PCM32=C.FMOD_SOUND_FORMAT_PCM32
M.FMOD_SOUND_FORMAT_PCMFLOAT=C.FMOD_SOUND_FORMAT_PCMFLOAT
M.FMOD_SOUND_FORMAT_BITSTREAM=C.FMOD_SOUND_FORMAT_BITSTREAM
M.FMOD_SOUND_FORMAT_MAX=C.FMOD_SOUND_FORMAT_MAX
M.FMOD_SOUND_FORMAT_FORCEINT=C.FMOD_SOUND_FORMAT_FORCEINT
M.FMOD_OPENSTATE_READY=C.FMOD_OPENSTATE_READY
M.FMOD_OPENSTATE_LOADING=C.FMOD_OPENSTATE_LOADING
M.FMOD_OPENSTATE_ERROR=C.FMOD_OPENSTATE_ERROR
M.FMOD_OPENSTATE_CONNECTING=C.FMOD_OPENSTATE_CONNECTING
M.FMOD_OPENSTATE_BUFFERING=C.FMOD_OPENSTATE_BUFFERING
M.FMOD_OPENSTATE_SEEKING=C.FMOD_OPENSTATE_SEEKING
M.FMOD_OPENSTATE_PLAYING=C.FMOD_OPENSTATE_PLAYING
M.FMOD_OPENSTATE_SETPOSITION=C.FMOD_OPENSTATE_SETPOSITION
M.FMOD_OPENSTATE_MAX=C.FMOD_OPENSTATE_MAX
M.FMOD_OPENSTATE_FORCEINT=C.FMOD_OPENSTATE_FORCEINT
M.FMOD_SOUNDGROUP_BEHAVIOR_FAIL=C.FMOD_SOUNDGROUP_BEHAVIOR_FAIL
M.FMOD_SOUNDGROUP_BEHAVIOR_MUTE=C.FMOD_SOUNDGROUP_BEHAVIOR_MUTE
M.FMOD_SOUNDGROUP_BEHAVIOR_STEALLOWEST=C.FMOD_SOUNDGROUP_BEHAVIOR_STEALLOWEST
M.FMOD_SOUNDGROUP_BEHAVIOR_MAX=C.FMOD_SOUNDGROUP_BEHAVIOR_MAX
M.FMOD_SOUNDGROUP_BEHAVIOR_FORCEINT=C.FMOD_SOUNDGROUP_BEHAVIOR_FORCEINT
M.FMOD_CHANNELCONTROL_CALLBACK_END=C.FMOD_CHANNELCONTROL_CALLBACK_END
M.FMOD_CHANNELCONTROL_CALLBACK_VIRTUALVOICE=C.FMOD_CHANNELCONTROL_CALLBACK_VIRTUALVOICE
M.FMOD_CHANNELCONTROL_CALLBACK_SYNCPOINT=C.FMOD_CHANNELCONTROL_CALLBACK_SYNCPOINT
M.FMOD_CHANNELCONTROL_CALLBACK_OCCLUSION=C.FMOD_CHANNELCONTROL_CALLBACK_OCCLUSION
M.FMOD_CHANNELCONTROL_CALLBACK_MAX=C.FMOD_CHANNELCONTROL_CALLBACK_MAX
M.FMOD_CHANNELCONTROL_CALLBACK_FORCEINT=C.FMOD_CHANNELCONTROL_CALLBACK_FORCEINT
M.FMOD_CHANNELCONTROL_DSP_HEAD=C.FMOD_CHANNELCONTROL_DSP_HEAD
M.FMOD_CHANNELCONTROL_DSP_FADER=C.FMOD_CHANNELCONTROL_DSP_FADER
M.FMOD_CHANNELCONTROL_DSP_TAIL=C.FMOD_CHANNELCONTROL_DSP_TAIL
M.FMOD_CHANNELCONTROL_DSP_FORCEINT=C.FMOD_CHANNELCONTROL_DSP_FORCEINT
M.FMOD_ERRORCALLBACK_INSTANCETYPE_NONE=C.FMOD_ERRORCALLBACK_INSTANCETYPE_NONE
M.FMOD_ERRORCALLBACK_INSTANCETYPE_SYSTEM=C.FMOD_ERRORCALLBACK_INSTANCETYPE_SYSTEM
M.FMOD_ERRORCALLBACK_INSTANCETYPE_CHANNEL=C.FMOD_ERRORCALLBACK_INSTANCETYPE_CHANNEL
M.FMOD_ERRORCALLBACK_INSTANCETYPE_CHANNELGROUP=C.FMOD_ERRORCALLBACK_INSTANCETYPE_CHANNELGROUP
M.FMOD_ERRORCALLBACK_INSTANCETYPE_CHANNELCONTROL=C.FMOD_ERRORCALLBACK_INSTANCETYPE_CHANNELCONTROL
M.FMOD_ERRORCALLBACK_INSTANCETYPE_SOUND=C.FMOD_ERRORCALLBACK_INSTANCETYPE_SOUND
M.FMOD_ERRORCALLBACK_INSTANCETYPE_SOUNDGROUP=C.FMOD_ERRORCALLBACK_INSTANCETYPE_SOUNDGROUP
M.FMOD_ERRORCALLBACK_INSTANCETYPE_DSP=C.FMOD_ERRORCALLBACK_INSTANCETYPE_DSP
M.FMOD_ERRORCALLBACK_INSTANCETYPE_DSPCONNECTION=C.FMOD_ERRORCALLBACK_INSTANCETYPE_DSPCONNECTION
M.FMOD_ERRORCALLBACK_INSTANCETYPE_GEOMETRY=C.FMOD_ERRORCALLBACK_INSTANCETYPE_GEOMETRY
M.FMOD_ERRORCALLBACK_INSTANCETYPE_REVERB3D=C.FMOD_ERRORCALLBACK_INSTANCETYPE_REVERB3D
M.FMOD_ERRORCALLBACK_INSTANCETYPE_STUDIO_SYSTEM=C.FMOD_ERRORCALLBACK_INSTANCETYPE_STUDIO_SYSTEM
M.FMOD_ERRORCALLBACK_INSTANCETYPE_STUDIO_EVENTDESCRIPTION=C
    .FMOD_ERRORCALLBACK_INSTANCETYPE_STUDIO_EVENTDESCRIPTION
M.FMOD_ERRORCALLBACK_INSTANCETYPE_STUDIO_EVENTINSTANCE=C.FMOD_ERRORCALLBACK_INSTANCETYPE_STUDIO_EVENTINSTANCE
M.FMOD_ERRORCALLBACK_INSTANCETYPE_STUDIO_PARAMETERINSTANCE=C
    .FMOD_ERRORCALLBACK_INSTANCETYPE_STUDIO_PARAMETERINSTANCE
M.FMOD_ERRORCALLBACK_INSTANCETYPE_STUDIO_BUS=C.FMOD_ERRORCALLBACK_INSTANCETYPE_STUDIO_BUS
M.FMOD_ERRORCALLBACK_INSTANCETYPE_STUDIO_VCA=C.FMOD_ERRORCALLBACK_INSTANCETYPE_STUDIO_VCA
M.FMOD_ERRORCALLBACK_INSTANCETYPE_STUDIO_BANK=C.FMOD_ERRORCALLBACK_INSTANCETYPE_STUDIO_BANK
M.FMOD_ERRORCALLBACK_INSTANCETYPE_STUDIO_COMMANDREPLAY=C.FMOD_ERRORCALLBACK_INSTANCETYPE_STUDIO_COMMANDREPLAY
M.FMOD_ERRORCALLBACK_INSTANCETYPE_FORCEINT=C.FMOD_ERRORCALLBACK_INSTANCETYPE_FORCEINT
M.FMOD_DSP_RESAMPLER_DEFAULT=C.FMOD_DSP_RESAMPLER_DEFAULT
M.FMOD_DSP_RESAMPLER_NOINTERP=C.FMOD_DSP_RESAMPLER_NOINTERP
M.FMOD_DSP_RESAMPLER_LINEAR=C.FMOD_DSP_RESAMPLER_LINEAR
M.FMOD_DSP_RESAMPLER_CUBIC=C.FMOD_DSP_RESAMPLER_CUBIC
M.FMOD_DSP_RESAMPLER_SPLINE=C.FMOD_DSP_RESAMPLER_SPLINE
M.FMOD_DSP_RESAMPLER_MAX=C.FMOD_DSP_RESAMPLER_MAX
M.FMOD_DSP_RESAMPLER_FORCEINT=C.FMOD_DSP_RESAMPLER_FORCEINT
M.FMOD_DSP_CALLBACK_DATAPARAMETERRELEASE=C.FMOD_DSP_CALLBACK_DATAPARAMETERRELEASE
M.FMOD_DSP_CALLBACK_MAX=C.FMOD_DSP_CALLBACK_MAX
M.FMOD_DSP_CALLBACK_FORCEINT=C.FMOD_DSP_CALLBACK_FORCEINT
M.FMOD_DSPCONNECTION_TYPE_STANDARD=C.FMOD_DSPCONNECTION_TYPE_STANDARD
M.FMOD_DSPCONNECTION_TYPE_SIDECHAIN=C.FMOD_DSPCONNECTION_TYPE_SIDECHAIN
M.FMOD_DSPCONNECTION_TYPE_SEND=C.FMOD_DSPCONNECTION_TYPE_SEND
M.FMOD_DSPCONNECTION_TYPE_SEND_SIDECHAIN=C.FMOD_DSPCONNECTION_TYPE_SEND_SIDECHAIN
M.FMOD_DSPCONNECTION_TYPE_MAX=C.FMOD_DSPCONNECTION_TYPE_MAX
M.FMOD_DSPCONNECTION_TYPE_FORCEINT=C.FMOD_DSPCONNECTION_TYPE_FORCEINT
M.FMOD_TAGTYPE_UNKNOWN=C.FMOD_TAGTYPE_UNKNOWN
M.FMOD_TAGTYPE_ID3V1=C.FMOD_TAGTYPE_ID3V1
M.FMOD_TAGTYPE_ID3V2=C.FMOD_TAGTYPE_ID3V2
M.FMOD_TAGTYPE_VORBISCOMMENT=C.FMOD_TAGTYPE_VORBISCOMMENT
M.FMOD_TAGTYPE_SHOUTCAST=C.FMOD_TAGTYPE_SHOUTCAST
M.FMOD_TAGTYPE_ICECAST=C.FMOD_TAGTYPE_ICECAST
M.FMOD_TAGTYPE_ASF=C.FMOD_TAGTYPE_ASF
M.FMOD_TAGTYPE_MIDI=C.FMOD_TAGTYPE_MIDI
M.FMOD_TAGTYPE_PLAYLIST=C.FMOD_TAGTYPE_PLAYLIST
M.FMOD_TAGTYPE_FMOD=C.FMOD_TAGTYPE_FMOD
M.FMOD_TAGTYPE_USER=C.FMOD_TAGTYPE_USER
M.FMOD_TAGTYPE_MAX=C.FMOD_TAGTYPE_MAX
M.FMOD_TAGTYPE_FORCEINT=C.FMOD_TAGTYPE_FORCEINT
M.FMOD_TAGDATATYPE_BINARY=C.FMOD_TAGDATATYPE_BINARY
M.FMOD_TAGDATATYPE_INT=C.FMOD_TAGDATATYPE_INT
M.FMOD_TAGDATATYPE_FLOAT=C.FMOD_TAGDATATYPE_FLOAT
M.FMOD_TAGDATATYPE_STRING=C.FMOD_TAGDATATYPE_STRING
M.FMOD_TAGDATATYPE_STRING_UTF16=C.FMOD_TAGDATATYPE_STRING_UTF16
M.FMOD_TAGDATATYPE_STRING_UTF16BE=C.FMOD_TAGDATATYPE_STRING_UTF16BE
M.FMOD_TAGDATATYPE_STRING_UTF8=C.FMOD_TAGDATATYPE_STRING_UTF8
M.FMOD_TAGDATATYPE_MAX=C.FMOD_TAGDATATYPE_MAX
M.FMOD_TAGDATATYPE_FORCEINT=C.FMOD_TAGDATATYPE_FORCEINT
M.FMOD_PORT_TYPE_MUSIC=C.FMOD_PORT_TYPE_MUSIC
M.FMOD_PORT_TYPE_COPYRIGHT_MUSIC=C.FMOD_PORT_TYPE_COPYRIGHT_MUSIC
M.FMOD_PORT_TYPE_VOICE=C.FMOD_PORT_TYPE_VOICE
M.FMOD_PORT_TYPE_CONTROLLER=C.FMOD_PORT_TYPE_CONTROLLER
M.FMOD_PORT_TYPE_PERSONAL=C.FMOD_PORT_TYPE_PERSONAL
M.FMOD_PORT_TYPE_VIBRATION=C.FMOD_PORT_TYPE_VIBRATION
M.FMOD_PORT_TYPE_AUX=C.FMOD_PORT_TYPE_AUX
M.FMOD_PORT_TYPE_MAX=C.FMOD_PORT_TYPE_MAX
M.FMOD_PORT_TYPE_FORCEINT=C.FMOD_PORT_TYPE_FORCEINT
M.FMOD_DSP_FADER_GAIN=C.FMOD_DSP_FADER_GAIN
M.FMOD_DSP_FADER_OVERALL_GAIN=C.FMOD_DSP_FADER_OVERALL_GAIN
M.FMOD_DSP_MULTIBAND_EQ_A_FILTER=C.FMOD_DSP_MULTIBAND_EQ_A_FILTER
M.FMOD_DSP_MULTIBAND_EQ_A_FREQUENCY=C.FMOD_DSP_MULTIBAND_EQ_A_FREQUENCY
M.FMOD_DSP_MULTIBAND_EQ_A_Q=C.FMOD_DSP_MULTIBAND_EQ_A_Q
M.FMOD_DSP_MULTIBAND_EQ_A_GAIN=C.FMOD_DSP_MULTIBAND_EQ_A_GAIN
M.FMOD_DSP_MULTIBAND_EQ_B_FILTER=C.FMOD_DSP_MULTIBAND_EQ_B_FILTER
M.FMOD_DSP_MULTIBAND_EQ_B_FREQUENCY=C.FMOD_DSP_MULTIBAND_EQ_B_FREQUENCY
M.FMOD_DSP_MULTIBAND_EQ_B_Q=C.FMOD_DSP_MULTIBAND_EQ_B_Q
M.FMOD_DSP_MULTIBAND_EQ_B_GAIN=C.FMOD_DSP_MULTIBAND_EQ_B_GAIN
M.FMOD_DSP_MULTIBAND_EQ_C_FILTER=C.FMOD_DSP_MULTIBAND_EQ_C_FILTER
M.FMOD_DSP_MULTIBAND_EQ_C_FREQUENCY=C.FMOD_DSP_MULTIBAND_EQ_C_FREQUENCY
M.FMOD_DSP_MULTIBAND_EQ_C_Q=C.FMOD_DSP_MULTIBAND_EQ_C_Q
M.FMOD_DSP_MULTIBAND_EQ_C_GAIN=C.FMOD_DSP_MULTIBAND_EQ_C_GAIN
M.FMOD_DSP_MULTIBAND_EQ_D_FILTER=C.FMOD_DSP_MULTIBAND_EQ_D_FILTER
M.FMOD_DSP_MULTIBAND_EQ_D_FREQUENCY=C.FMOD_DSP_MULTIBAND_EQ_D_FREQUENCY
M.FMOD_DSP_MULTIBAND_EQ_D_Q=C.FMOD_DSP_MULTIBAND_EQ_D_Q
M.FMOD_DSP_MULTIBAND_EQ_D_GAIN=C.FMOD_DSP_MULTIBAND_EQ_D_GAIN
M.FMOD_DSP_MULTIBAND_EQ_E_FILTER=C.FMOD_DSP_MULTIBAND_EQ_E_FILTER
M.FMOD_DSP_MULTIBAND_EQ_E_FREQUENCY=C.FMOD_DSP_MULTIBAND_EQ_E_FREQUENCY
M.FMOD_DSP_MULTIBAND_EQ_E_Q=C.FMOD_DSP_MULTIBAND_EQ_E_Q
M.FMOD_DSP_MULTIBAND_EQ_E_GAIN=C.FMOD_DSP_MULTIBAND_EQ_E_GAIN
M.FMOD_DSP_MULTIBAND_EQ_FILTER_DISABLED=C.FMOD_DSP_MULTIBAND_EQ_FILTER_DISABLED
M.FMOD_DSP_MULTIBAND_EQ_FILTER_LOWPASS_12DB=C.FMOD_DSP_MULTIBAND_EQ_FILTER_LOWPASS_12DB
M.FMOD_DSP_MULTIBAND_EQ_FILTER_LOWPASS_24DB=C.FMOD_DSP_MULTIBAND_EQ_FILTER_LOWPASS_24DB
M.FMOD_DSP_MULTIBAND_EQ_FILTER_LOWPASS_48DB=C.FMOD_DSP_MULTIBAND_EQ_FILTER_LOWPASS_48DB
M.FMOD_DSP_MULTIBAND_EQ_FILTER_HIGHPASS_12DB=C.FMOD_DSP_MULTIBAND_EQ_FILTER_HIGHPASS_12DB
M.FMOD_DSP_MULTIBAND_EQ_FILTER_HIGHPASS_24DB=C.FMOD_DSP_MULTIBAND_EQ_FILTER_HIGHPASS_24DB
M.FMOD_DSP_MULTIBAND_EQ_FILTER_HIGHPASS_48DB=C.FMOD_DSP_MULTIBAND_EQ_FILTER_HIGHPASS_48DB
M.FMOD_DSP_MULTIBAND_EQ_FILTER_LOWSHELF=C.FMOD_DSP_MULTIBAND_EQ_FILTER_LOWSHELF
M.FMOD_DSP_MULTIBAND_EQ_FILTER_HIGHSHELF=C.FMOD_DSP_MULTIBAND_EQ_FILTER_HIGHSHELF
M.FMOD_DSP_MULTIBAND_EQ_FILTER_PEAKING=C.FMOD_DSP_MULTIBAND_EQ_FILTER_PEAKING
M.FMOD_DSP_MULTIBAND_EQ_FILTER_BANDPASS=C.FMOD_DSP_MULTIBAND_EQ_FILTER_BANDPASS
M.FMOD_DSP_MULTIBAND_EQ_FILTER_NOTCH=C.FMOD_DSP_MULTIBAND_EQ_FILTER_NOTCH
M.FMOD_DSP_MULTIBAND_EQ_FILTER_ALLPASS=C.FMOD_DSP_MULTIBAND_EQ_FILTER_ALLPASS
M.FMOD_DSP_PAN_SURROUND_DEFAULT=C.FMOD_DSP_PAN_SURROUND_DEFAULT
M.FMOD_DSP_PAN_SURROUND_ROTATION_NOT_BIASED=C.FMOD_DSP_PAN_SURROUND_ROTATION_NOT_BIASED
M.FMOD_DSP_PAN_SURROUND_FLAGS_FORCEINT=C.FMOD_DSP_PAN_SURROUND_FLAGS_FORCEINT
M.FMOD_STUDIO_LOADING_STATE_UNLOADING=C.FMOD_STUDIO_LOADING_STATE_UNLOADING
M.FMOD_STUDIO_LOADING_STATE_UNLOADED=C.FMOD_STUDIO_LOADING_STATE_UNLOADED
M.FMOD_STUDIO_LOADING_STATE_LOADING=C.FMOD_STUDIO_LOADING_STATE_LOADING
M.FMOD_STUDIO_LOADING_STATE_LOADED=C.FMOD_STUDIO_LOADING_STATE_LOADED
M.FMOD_STUDIO_LOADING_STATE_ERROR=C.FMOD_STUDIO_LOADING_STATE_ERROR
M.FMOD_STUDIO_LOADING_STATE_FORCEINT=C.FMOD_STUDIO_LOADING_STATE_FORCEINT
M.FMOD_STUDIO_LOAD_MEMORY=C.FMOD_STUDIO_LOAD_MEMORY
M.FMOD_STUDIO_LOAD_MEMORY_POINT=C.FMOD_STUDIO_LOAD_MEMORY_POINT
M.FMOD_STUDIO_LOAD_MEMORY_FORCEINT=C.FMOD_STUDIO_LOAD_MEMORY_FORCEINT
M.FMOD_STUDIO_PARAMETER_GAME_CONTROLLED=C.FMOD_STUDIO_PARAMETER_GAME_CONTROLLED
M.FMOD_STUDIO_PARAMETER_AUTOMATIC_DISTANCE=C.FMOD_STUDIO_PARAMETER_AUTOMATIC_DISTANCE
M.FMOD_STUDIO_PARAMETER_AUTOMATIC_EVENT_CONE_ANGLE=C.FMOD_STUDIO_PARAMETER_AUTOMATIC_EVENT_CONE_ANGLE
M.FMOD_STUDIO_PARAMETER_AUTOMATIC_EVENT_ORIENTATION=C.FMOD_STUDIO_PARAMETER_AUTOMATIC_EVENT_ORIENTATION
M.FMOD_STUDIO_PARAMETER_AUTOMATIC_DIRECTION=C.FMOD_STUDIO_PARAMETER_AUTOMATIC_DIRECTION
M.FMOD_STUDIO_PARAMETER_AUTOMATIC_ELEVATION=C.FMOD_STUDIO_PARAMETER_AUTOMATIC_ELEVATION
M.FMOD_STUDIO_PARAMETER_AUTOMATIC_LISTENER_ORIENTATION=C.FMOD_STUDIO_PARAMETER_AUTOMATIC_LISTENER_ORIENTATION
M.FMOD_STUDIO_PARAMETER_AUTOMATIC_SPEED=C.FMOD_STUDIO_PARAMETER_AUTOMATIC_SPEED
M.FMOD_STUDIO_PARAMETER_AUTOMATIC_SPEED_ABSOLUTE=C.FMOD_STUDIO_PARAMETER_AUTOMATIC_SPEED_ABSOLUTE
M.FMOD_STUDIO_PARAMETER_AUTOMATIC_DISTANCE_NORMALIZED=C.FMOD_STUDIO_PARAMETER_AUTOMATIC_DISTANCE_NORMALIZED
M.FMOD_STUDIO_PARAMETER_MAX=C.FMOD_STUDIO_PARAMETER_MAX
M.FMOD_STUDIO_PARAMETER_FORCEINT=C.FMOD_STUDIO_PARAMETER_FORCEINT
M.FMOD_STUDIO_USER_PROPERTY_TYPE_INTEGER=C.FMOD_STUDIO_USER_PROPERTY_TYPE_INTEGER
M.FMOD_STUDIO_USER_PROPERTY_TYPE_BOOLEAN=C.FMOD_STUDIO_USER_PROPERTY_TYPE_BOOLEAN
M.FMOD_STUDIO_USER_PROPERTY_TYPE_FLOAT=C.FMOD_STUDIO_USER_PROPERTY_TYPE_FLOAT
M.FMOD_STUDIO_USER_PROPERTY_TYPE_STRING=C.FMOD_STUDIO_USER_PROPERTY_TYPE_STRING
M.FMOD_STUDIO_USER_PROPERTY_TYPE_FORCEINT=C.FMOD_STUDIO_USER_PROPERTY_TYPE_FORCEINT
M.FMOD_STUDIO_EVENT_PROPERTY_CHANNELPRIORITY=C.FMOD_STUDIO_EVENT_PROPERTY_CHANNELPRIORITY
M.FMOD_STUDIO_EVENT_PROPERTY_SCHEDULE_DELAY=C.FMOD_STUDIO_EVENT_PROPERTY_SCHEDULE_DELAY
M.FMOD_STUDIO_EVENT_PROPERTY_SCHEDULE_LOOKAHEAD=C.FMOD_STUDIO_EVENT_PROPERTY_SCHEDULE_LOOKAHEAD
M.FMOD_STUDIO_EVENT_PROPERTY_MINIMUM_DISTANCE=C.FMOD_STUDIO_EVENT_PROPERTY_MINIMUM_DISTANCE
M.FMOD_STUDIO_EVENT_PROPERTY_MAXIMUM_DISTANCE=C.FMOD_STUDIO_EVENT_PROPERTY_MAXIMUM_DISTANCE
M.FMOD_STUDIO_EVENT_PROPERTY_COOLDOWN=C.FMOD_STUDIO_EVENT_PROPERTY_COOLDOWN
M.FMOD_STUDIO_EVENT_PROPERTY_MAX=C.FMOD_STUDIO_EVENT_PROPERTY_MAX
M.FMOD_STUDIO_EVENT_PROPERTY_FORCEINT=C.FMOD_STUDIO_EVENT_PROPERTY_FORCEINT
M.FMOD_STUDIO_PLAYBACK_PLAYING=C.FMOD_STUDIO_PLAYBACK_PLAYING
M.FMOD_STUDIO_PLAYBACK_SUSTAINING=C.FMOD_STUDIO_PLAYBACK_SUSTAINING
M.FMOD_STUDIO_PLAYBACK_STOPPED=C.FMOD_STUDIO_PLAYBACK_STOPPED
M.FMOD_STUDIO_PLAYBACK_STARTING=C.FMOD_STUDIO_PLAYBACK_STARTING
M.FMOD_STUDIO_PLAYBACK_STOPPING=C.FMOD_STUDIO_PLAYBACK_STOPPING
M.FMOD_STUDIO_PLAYBACK_FORCEINT=C.FMOD_STUDIO_PLAYBACK_FORCEINT
M.FMOD_STUDIO_STOP_ALLOWFADEOUT=C.FMOD_STUDIO_STOP_ALLOWFADEOUT
M.FMOD_STUDIO_STOP_IMMEDIATE=C.FMOD_STUDIO_STOP_IMMEDIATE
M.FMOD_STUDIO_STOP_FORCEINT=C.FMOD_STUDIO_STOP_FORCEINT
M.FMOD_STUDIO_INSTANCETYPE_NONE=C.FMOD_STUDIO_INSTANCETYPE_NONE
M.FMOD_STUDIO_INSTANCETYPE_SYSTEM=C.FMOD_STUDIO_INSTANCETYPE_SYSTEM
M.FMOD_STUDIO_INSTANCETYPE_EVENTDESCRIPTION=C.FMOD_STUDIO_INSTANCETYPE_EVENTDESCRIPTION
M.FMOD_STUDIO_INSTANCETYPE_EVENTINSTANCE=C.FMOD_STUDIO_INSTANCETYPE_EVENTINSTANCE
M.FMOD_STUDIO_INSTANCETYPE_PARAMETERINSTANCE=C.FMOD_STUDIO_INSTANCETYPE_PARAMETERINSTANCE
M.FMOD_STUDIO_INSTANCETYPE_BUS=C.FMOD_STUDIO_INSTANCETYPE_BUS
M.FMOD_STUDIO_INSTANCETYPE_VCA=C.FMOD_STUDIO_INSTANCETYPE_VCA
M.FMOD_STUDIO_INSTANCETYPE_BANK=C.FMOD_STUDIO_INSTANCETYPE_BANK
M.FMOD_STUDIO_INSTANCETYPE_COMMANDREPLAY=C.FMOD_STUDIO_INSTANCETYPE_COMMANDREPLAY
M.FMOD_STUDIO_INSTANCETYPE_FORCEINT=C.FMOD_STUDIO_INSTANCETYPE_FORCEINT
