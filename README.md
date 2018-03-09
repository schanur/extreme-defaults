# extreme-defaults

## Run programs with the most extreme parameters.

### Multimedia
* **max-optipng:** Runs optipng with slowest settings to archieve maximum PNG file compression
* **max-pngcrush:** Produce the smallest possible PNG file pngcrush can produce
* **max-quality-yt-music-dl:** Download the YouTube video with the highest audio quality and extract the audio file

### Compression
* **max-xz-compression:** xz with parameters for maximum compression
* **max-zstd-compression:** zstd with parameters for maximum compression
* **max-strip:** Strip as many unused symbols from a binary as possible
* **max-upx-compression:** UPX binary compressor with parameters for maximum compression

### Scheduling
* **max-nice:** Run an application with the least intruding scheduling policies on CPU, IO, fsync operations

### Development
* **max-valgrind-drd-error-detect:** Runs the valgrind DRD tool with settings for to find maximum numbers of errors
* **max-valgrind-exp-sgcheck-error-detect:** Runs the valgrind exp-sgcheck tool with settings for to find maximum numbers of errors
* **max-valgrind-helgrind-error-detect:** Runs the valgrind helgrind tool with settings for to find maximum numbers of errors
* **max-valgrind-memcheck-error-detect:** Runs the valgrind memcheck tool with settings for to find maximum numbers of errors

### Security
* **max-secure-luks-format:** Create a LUKS dm-crypt volume with very secure crypto/hash settings
* **max-secure-ssh-keygen:** Create a SSH RSA key with high security margin

### Virtualization
* **max-qemu-speed:** Start a qemu instance with settings optimized for speed
* **max-qemu-speed-no-kvm:** Start a qemu instance with settings optimized for speed but without hardware virtualization support
* **max-qemu-img-speed:** Create a new qcow2 virtual machine image with performance optimizations
