rfp
===

Run From Private

Sometimes scripts are stored in github private repositories. Rather than having to manually download them this scripts prompts for the script name and credintials and then runs it.

To run (copy and paste):

    curl https://raw.github.com/JPCU/rfp/master/rfp.sh -o rfp.sh
    md5 -q rfp.sh; echo "c587bb210acfe370233163f6d0c5f36f"
    echo "If check sum matches run sh rfp.sh"

