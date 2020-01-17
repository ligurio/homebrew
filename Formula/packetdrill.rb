class Testres < Formula
	desc "packetdrill with UDPLite and SCTP support and bug fixes for FreeBSD
	homepage "https://github.com/nplab/packetdrill"
	url "https://github.com/nplab/packetdrill"
	sha256 "282c08206d075777c22e8ffddf179a5a17aa89a555e6ff69a8aba4b55845cc"
	def install
		system "make", "install"
		system "cd packetdrill/gtests/net/packetdrill/; ./configure"
		system "make"
	end
end
