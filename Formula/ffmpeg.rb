class Ffmpeg < Formula
  desc "Video and audio transcoding tools for Apple Silicon"
  homepage "https://github.com/magalab/ffmpeg"
  url "https://github.com/magalab/ffmpeg/releases/download/ffmpeg-v9.0.2/ffmpeg-9.0.2-macos15-arm64.tar.gz"
  version "9.0.2"
  sha256 "27cbecd88784c55162173de0456eae5bd72614308a8b655905f68e61d6da6729"
  license "GPL-2.0-or-later"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "bin/ffmpeg", "bin/ffprobe"
    pkgshare.install "share/ffmpeg-build"
  end

  test do
    probe_codec = lambda do |file, stream|
      shell_output(
        "#{bin}/ffprobe -v error -select_streams #{stream} "           "-show_entries stream=codec_name "           "-of default=noprint_wrappers=1:nokey=1 #{testpath}/#{file}"
      ).strip
    end

    assert_match version.to_s, shell_output("#{bin}/ffmpeg -version")
    assert_match version.to_s, shell_output("#{bin}/ffprobe -version")
    output = shell_output("#{bin}/ffmpeg -hide_banner -encoders 2>&1")
    assert_match "libx264", output
    assert_match "h264_videotoolbox", output
    assert_match "aac", output
    assert_match "libmp3lame", output
    assert_match "libopus", output
    assert_match "libx265", output
    assert_match "libvpx", output
    assert_match "libvpx-vp9", output
    assert_match "libvorbis", output
    assert_match "libsvtav1", output

    system bin/"ffmpeg", "-hide_banner", "-v", "error", "-y", "-f", "lavfi",
           "-i", "testsrc2=duration=1:size=320x240:rate=30", "-c:v",
           "libx264", "-preset", "ultrafast", "-b:v", "500k", "#{testpath}/smoke.mp4"
    assert_equal "h264", probe_codec.call("smoke.mp4", "v:0")

    system bin/"ffmpeg", "-hide_banner", "-v", "error", "-y", "-f", "lavfi",
           "-i", "sine=frequency=440:sample_rate=44100:duration=1", "-c:a",
           "libmp3lame", "#{testpath}/smoke.mp3"
    assert_equal "mp3", probe_codec.call("smoke.mp3", "a:0")

    system bin/"ffmpeg", "-hide_banner", "-v", "error", "-y", "-f", "lavfi",
           "-i", "sine=frequency=440:sample_rate=48000:duration=1", "-c:a",
           "libopus", "#{testpath}/smoke.opus"
    assert_equal "opus", probe_codec.call("smoke.opus", "a:0")

    system bin/"ffmpeg", "-hide_banner", "-v", "error", "-y", "-f", "lavfi",
           "-i", "testsrc2=duration=1:size=320x240:rate=24", "-c:v", "libx265",
           "-preset", "ultrafast", "-x265-params", "log-level=error", "#{testpath}/smoke-hevc.mp4"
    assert_equal "hevc", probe_codec.call("smoke-hevc.mp4", "v:0")

    system bin/"ffmpeg", "-hide_banner", "-v", "error", "-y", "-f", "lavfi",
           "-i", "testsrc2=duration=1:size=320x240:rate=24", "-c:v", "libvpx-vp9",
           "-deadline", "realtime", "-cpu-used", "8", "-b:v", "500k", "#{testpath}/smoke-vp9.webm"
    assert_equal "vp9", probe_codec.call("smoke-vp9.webm", "v:0")

    system bin/"ffmpeg", "-hide_banner", "-v", "error", "-y", "-f", "lavfi",
           "-i", "testsrc2=duration=1:size=320x240:rate=24", "-c:v", "libsvtav1",
           "-preset", "12", "-crf", "45", "#{testpath}/smoke-av1.mkv"
    assert_equal "av1", probe_codec.call("smoke-av1.mkv", "v:0")

    system bin/"ffmpeg", "-hide_banner", "-v", "error", "-y", "-f", "lavfi",
           "-i", "sine=frequency=440:sample_rate=48000:duration=1", "-c:a",
           "libvorbis", "#{testpath}/smoke-vorbis.ogg"
    assert_equal "vorbis", probe_codec.call("smoke-vorbis.ogg", "a:0")
  end
end
