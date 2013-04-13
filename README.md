rfp
===

Run From Private

Sometimes scripts are stored in github private repositories. Rather than having to manually download them this scripts prompts for the script name and credintials and then runs it.

To run :  curl --silent https://raw.github.com/JPCU/rfp/master/rfp.sh | tee >(md5) | sh
