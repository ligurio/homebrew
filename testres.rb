class Testres < Formula
	desc "hyperfast web frontend for software testing results"
	homepage "https://github.com/ligurio/testres"
	url "https://bronevichok.ru/trash/testres-0.1.tar.gz"
	sha256 "282c08206d075777c22e8ffddf179a5a17aa89a555e6ff69a8aba4b55845cc"
	def install
		system "make"
		system "make", "install"
	end
end
