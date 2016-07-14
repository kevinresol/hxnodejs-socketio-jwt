package socketiojwt;

import haxe.extern.EitherType;

@:jsRequire('socketio-jwt')
extern class SocketioJwt {
	public static function authorize(options:AuthorizeOptions):Dynamic->Dynamic->Void;
}

typedef AsyncSecret = Dynamic->Dynamic->(Dynamic->Dynamic->Void)->Void; // function(request, decoded, callback)

typedef AuthorizeOptions = {
	secret:EitherType<String, AsyncSecret>,
	?handshake:Bool,
	?callback:Bool,
	?timeout:Int,
}