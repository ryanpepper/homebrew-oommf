class Oommf < Formula
  desc "Object Oriented MicroMagnetic Framework - OOMMF"
  homepage "http://math.nist.gov/oommf/"
  url "https://github.com/fangohr/oommf/archive/oommf-12.6-modified.tar.gz"
  sha256 "ebc243ad28c52645c3f53167c0c917eb6c0773deb836b675bc925c30a711ca28"
  depends_on :x11

  def install
    cd "oommf" do
      system "./oommf.tcl", "pimake", "distclean"
      system "./oommf.tcl", "pimake", "upgrade"
      system "./oommf.tcl", "pimake"
    end
    bin.install "oommf/oommf.tcl" => "oommf"
  end

end
