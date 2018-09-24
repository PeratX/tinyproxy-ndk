# tinyproxy-ndk

Scripts that can help you cross-compile tinyproxy with Android NDK

## System Requirements

* [tinyproxy](https://github.com/tinyproxy/tinyproxy)
* [Android NDK r15c](https://developer.android.com/ndk/downloads/revision_history)
  * Newer Android NDK removed some includes and r18 removed GCC support
* Linux/macOS/Windows Subsystem for Linux
  * WSL must use Linux NDK

## Build

There are two scripts provided (arm & aarch64).

1. Copy `build-ndk-ARCH.sh` and `config.h.bak` into tinyproxy's folder.
1. Execute `./build-ndk-ARCH.sh`
1. Check binary with `file src/tinyproxy`

## License

    Copyright (C) 2018 PeratX

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
