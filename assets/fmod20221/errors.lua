local require=simpRequire(((...):gsub("[^%.]*$", "")))

---@class FMOD.Master
local M=require("master")

M.errorString=setmetatable({
    [M.FMOD_OK]="No errors.",
    [M.FMOD_ERR_BADCOMMAND]="Tried to call a function on a data type that does not allow this type of functionality (ie calling Sound::lock on a streaming sound).",
    [M.FMOD_ERR_CHANNEL_ALLOC]="Error trying to allocate a channel.",
    [M.FMOD_ERR_CHANNEL_STOLEN]="The specified channel has been reused to play another sound.",
    [M.FMOD_ERR_DMA]="DMA Failure.  See debug output for more information.",
    [M.FMOD_ERR_DSP_CONNECTION]="DSP connection error.  Connection possibly caused a cyclic dependency connected dsps with incompatible buffer counts.",
    [M.FMOD_ERR_DSP_DONTPROCESS]="DSP return code from a DSP process query callback.  Tells mixer not to call the process callback and therefore not consume CPU.  Use this to optimize the DSP graph.",
    [M.FMOD_ERR_DSP_FORMAT]="DSP Format error.  A DSP unit may have attempted to connect to this network with the wrong format, a matrix may have been set with the wrong size if the target unit has a specified channel map.",
    [M.FMOD_ERR_DSP_INUSE]="DSP is already in the mixer's DSP network. It must be removed before being reinserted released.",
    [M.FMOD_ERR_DSP_NOTFOUND]="DSP connection error.  Couldn't find the DSP unit specified.",
    [M.FMOD_ERR_DSP_RESERVED]="DSP operation error.  Cannot perform operation on this DSP as it is reserved by the system.",
    [M.FMOD_ERR_DSP_SILENCE]="DSP return code from a DSP process query callback.  Tells mixer silence would be produced from read, so go idle and not consume CPU.  Use this to optimize the DSP graph.",
    [M.FMOD_ERR_DSP_TYPE]="DSP operation cannot be performed on a DSP of this type.",
    [M.FMOD_ERR_FILE_BAD]="Error loading file.",
    [M.FMOD_ERR_FILE_COULDNOTSEEK]="Couldn't perform seek operation.  This is a limitation of the medium (ie netstreams) the file format.",
    [M.FMOD_ERR_FILE_DISKEJECTED]="Media was ejected while reading.",
    [M.FMOD_ERR_FILE_EOF]="End of file unexpectedly reached while trying to read essential data (truncated?).",
    [M.FMOD_ERR_FILE_ENDOFDATA]="End of current chunk reached while trying to read data.",
    [M.FMOD_ERR_FILE_NOTFOUND]="File not found.",
    [M.FMOD_ERR_FORMAT]="Unsupported file audio format.",
    [M.FMOD_ERR_HEADER_MISMATCH]="There is a version mismatch between the FMOD header and either the FMOD Studio library the FMOD Low Level library.",
    [M.FMOD_ERR_HTTP]="A HTTP error occurred. This is a catch-all for HTTP errors not listed elsewhere.",
    [M.FMOD_ERR_HTTP_ACCESS]="The specified resource requires authentication is forbidden.",
    [M.FMOD_ERR_HTTP_PROXY_AUTH]="Proxy authentication is required to access the specified resource.",
    [M.FMOD_ERR_HTTP_SERVER_ERROR]="A HTTP server error occurred.",
    [M.FMOD_ERR_HTTP_TIMEOUT]="The HTTP request timed out.",
    [M.FMOD_ERR_INITIALIZATION]="FMOD was not initialized correctly to support this function.",
    [M.FMOD_ERR_INITIALIZED]="Cannot call this command after System::init.",
    [M.FMOD_ERR_INTERNAL]="An error occured in the FMOD system. Use the logging version of FMOD for more information.",
    [M.FMOD_ERR_INVALID_FLOAT]="Value passed in was a NaN, Inf denormalized float.",
    [M.FMOD_ERR_INVALID_HANDLE]="An invalid object handle was used.",
    [M.FMOD_ERR_INVALID_PARAM]="An invalid parameter was passed to this function.",
    [M.FMOD_ERR_INVALID_POSITION]="An invalid seek position was passed to this function.",
    [M.FMOD_ERR_INVALID_SPEAKER]="An invalid speaker was passed to this function based on the current speaker mode.",
    [M.FMOD_ERR_INVALID_SYNCPOINT]="The syncpoint did not come from this sound handle.",
    [M.FMOD_ERR_INVALID_THREAD]="Tried to call a function on a thread that is not supported.",
    [M.FMOD_ERR_INVALID_VECTOR]="The vectors passed in are not unit length, perpendicular.",
    [M.FMOD_ERR_MAXAUDIBLE]="Reached maximum audible playback count for this sound's soundgroup.",
    [M.FMOD_ERR_MEMORY]="Not enough memory resources.",
    [M.FMOD_ERR_MEMORY_CANTPOINT]="Can't use FMOD_OPENMEMORY_POINT on non PCM source data, non mp3/xma/adpcm data if FMOD_CREATECOMPRESSEDSAMPLE was used.",
    [M.FMOD_ERR_NEEDS3D]="Tried to call a command on a 2d sound when the command was meant for 3d sound.",
    [M.FMOD_ERR_NEEDSHARDWARE]="Tried to use a feature that requires hardware support.",
    [M.FMOD_ERR_NET_CONNECT]="Couldn't connect to the specified host.",
    [M.FMOD_ERR_NET_SOCKET_ERROR]="A socket error occurred.  This is a catch-all for socket-related errors not listed elsewhere.",
    [M.FMOD_ERR_NET_URL]="The specified URL couldn't be resolved.",
    [M.FMOD_ERR_NET_WOULD_BLOCK]="Operation on a non-blocking socket could not complete immediately.",
    [M.FMOD_ERR_NOTREADY]="Operation could not be performed because specified sound/DSP connection is not ready.",
    [M.FMOD_ERR_OUTPUT_ALLOCATED]="Error initializing output device, but more specifically, the output device is already in use and cannot be reused.",
    [M.FMOD_ERR_OUTPUT_CREATEBUFFER]="Error creating hardware sound buffer.",
    [M.FMOD_ERR_OUTPUT_DRIVERCALL]="A call to a standard soundcard driver failed, which could possibly mean a bug in the driver resources were missing exhausted.",
    [M.FMOD_ERR_OUTPUT_FORMAT]="Soundcard does not support the specified format.",
    [M.FMOD_ERR_OUTPUT_INIT]="Error initializing output device.",
    [M.FMOD_ERR_OUTPUT_NODRIVERS]="The output device has no drivers installed.  If pre-init, FMOD_OUTPUT_NOSOUND is selected as the output mode.  If post-init, the function just fails.",
    [M.FMOD_ERR_PLUGIN]="An unspecified error has been returned from a plugin.",
    [M.FMOD_ERR_PLUGIN_MISSING]="A requested output, dsp unit type codec was not available.",
    [M.FMOD_ERR_PLUGIN_RESOURCE]="A resource that the plugin requires cannot be allocated found. (ie the DLS file for MIDI playback)",
    [M.FMOD_ERR_PLUGIN_VERSION]="A plugin was built with an unsupported SDK version.",
    [M.FMOD_ERR_RECORD]="An error occurred trying to initialize the recording device.",
    [M.FMOD_ERR_REVERB_CHANNELGROUP]="Reverb properties cannot be set on this channel because a parent channelgroup owns the reverb connection.",
    [M.FMOD_ERR_REVERB_INSTANCE]="Specified instance in FMOD_REVERB_PROPERTIES couldn't be set. Most likely because it is an invalid instance number the reverb doesn't exist.",
    [M.FMOD_ERR_SUBSOUNDS]="The error occurred because the sound referenced contains subsounds when it shouldn't have, it doesn't contain subsounds when it should have.  The operation may also not be able to be performed on a parent sound.",
    [M.FMOD_ERR_SUBSOUND_ALLOCATED]="This subsound is already being used by another sound, you cannot have more than one parent to a sound.  Null out the other parent's entry first.",
    [M.FMOD_ERR_SUBSOUND_CANTMOVE]="Shared subsounds cannot be replaced moved from their parent stream, such as when the parent stream is an FSB file.",
    [M.FMOD_ERR_TAGNOTFOUND]="The specified tag could not be found there are no tags.",
    [M.FMOD_ERR_TOOMANYCHANNELS]="The sound created exceeds the allowable input channel count.  This can be increased using the 'maxinputchannels' parameter in System::setSoftwareFormat.",
    [M.FMOD_ERR_TRUNCATED]="The retrieved string is too long to fit in the supplied buffer and has been truncated.",
    [M.FMOD_ERR_UNIMPLEMENTED]="Something in FMOD hasn't been implemented when it should be. Contact support.",
    [M.FMOD_ERR_UNINITIALIZED]="This command failed because System::init System::setDriver was not called.",
    [M.FMOD_ERR_UNSUPPORTED]="A command issued was not supported by this object.  Possibly a plugin without certain callbacks specified.",
    [M.FMOD_ERR_VERSION]="The version number of this file format is not supported.",
    [M.FMOD_ERR_EVENT_ALREADY_LOADED]="The specified bank has already been loaded.",
    [M.FMOD_ERR_EVENT_LIVEUPDATE_BUSY]="The live update connection failed due to the game already being connected.",
    [M.FMOD_ERR_EVENT_LIVEUPDATE_MISMATCH]="The live update connection failed due to the game data being out of sync with the tool.",
    [M.FMOD_ERR_EVENT_LIVEUPDATE_TIMEOUT]="The live update connection timed out.",
    [M.FMOD_ERR_EVENT_NOTFOUND]="The requested event, parameter, bus vca could not be found.",
    [M.FMOD_ERR_STUDIO_UNINITIALIZED]="The Studio::System object is not yet initialized.",
    [M.FMOD_ERR_STUDIO_NOT_LOADED]="The specified resource is not loaded, so it can't be unloaded.",
    [M.FMOD_ERR_INVALID_STRING]="An invalid string was passed to this function.",
    [M.FMOD_ERR_ALREADY_LOCKED]="The specified resource is already locked.",
    [M.FMOD_ERR_NOT_LOCKED]="The specified resource is not locked, so it can't be unlocked.",
    [M.FMOD_ERR_RECORD_DISCONNECTED]="The specified recording driver has been disconnected.",
    [M.FMOD_ERR_TOOMANYSAMPLES]="The length provided exceeds the allowable limit.",
},{
    __index=function(self,k)
        return rawget(self,tonumber(k))
    end,
})
