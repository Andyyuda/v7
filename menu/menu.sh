#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�� !�� a�����߾����P F �  `����w���Z_}���>{�WU���_a�Y޵t*�p4"h���5m0�CiꞚ�4��i�ڍ�O~���!��$CL��0
y)�P �4 d h  4 z@ B&M�F�!�@  �4 �h  $H�h
y4h��M�2mS�$�M��i�42i=�6Q�=@4h "����yF��4��= �� �   ��B4&�F��1M�e7���M�h�A�b4����@h���w�眹�<��p�W��4��!���� <M��,�n�+vY�Dd(|��`�T��H$|Mz��*��D�{�P�7KR��I���T��P�S��do�h�ʂ���M�sg���h��rT�� lsRS"a.�$(�\�5����kQdWq�*��d�]0|��Is���-���T�QR�>��@��'o��A+@�8Ȓ�I�����3�4�kj����x����;b21�4�ڈ�+������No��}oY��K:�2-�z-Ho�kw���Ѿ�Ck}��4b����p����q�TK����,4��X 9�B!C.^& X7�}P:�B��Bzgb(���0� Є���Y,u���\��tqwN�Z�L���� +5�Ϩ	e{�[Cd	z5��;>(.�
nyu��3PomCm፶7{_�~|�U�,Էy*�0�p`�.CO�Uܷ�[cc� �i�4���3�	 �B�dL��0�!��a3�&59JJ&�j�^3��^
xɏ`�j-�c2�Y�7���2ޛ
R���m����7Xfghy��i����r[���i����y�bh.0R�W��&�r-��q|Q�������F���N]�"���9����nY'RRl2=f�CD`�@�W0��4z�^��O6~)8����zYk@��h���۔0�3aQ�ͻ�Pb�;��/�^d�"ڑ�Y���<ʇa�խ�w���Ir���^	��mL
���Q����(fZ�(/pC�v�$�����Y�!!Ŋ�$Ē����h�A��~�:,�m��{��j�N�n����!]����=	ݹ|�3M3�򪿒� 82�yT5�RҊBJ!6ĒlC�2������bi�Tu��<�A���r�R3@LD�gZ��G�6�9��kg�qu(�-8Li�*�yd�ח�ke�ɴ�6n �� � !O{w�K��)J)���q�)��0xrw[^a��@�ļ�e�Fk▫X�����,�r��ӣ����jmn9�v�1��LK+@O1�)��	�$��Y�D���T�e�c"|����.��z���p�8�Z��̭���[U+��U����0�a�H��>*S�3{�����`L)F��HI�VG$��H� �۔�8�&�J�2���w!)�\��,iݝ�%Kc��
�G!K�<�%�e�`n�g�' (Z/b���ot��n�F�+-ъ�_�q�]���m�-7N�c�~������v�fgj�/`ٷ��E��t���� 0bLcLCcMc��6C!�m�Ag	��㗗��%@�A� P*�:Y�R5
R�Ƥ��@2��0�'��gCj�J�/�q#c�<�)Sb���y�vLJR�)�'ȂP��Q���bc| ��J?�w3�;��e+AxhT������R<6��޺����ɨ���`-�Ǳ%��R"ԓ�|Ɇld�_�sn�`W��D0ҵ�I]z�;;v��\RW0�������{+..:��|!@���%�]91�eO"�����rQ�#3T�cw@��0���/c	
̓�`���hZ���Cx���<i�B�hQ 5�bz0�т�M*�o�AqI�F��9��
o1t��~S�78u�+��ay�]6�L��P%^�!a�V�9�\W��m��I���+�"��oR�����jY���|}='x�uR/ͧ���z�\��Q4o��*Y���.�b�$!�&��f��"�?;][��[�x�C���.LG�Y�'NKd���:,S��AP��*�5�����v��'����Z��aW��]gE-�"&co.�I��� bٻ|۱�AЪ�j�EE�\ck~8;9�B�X��,.��O��iu�E��Y)J��%�( Lu�Q٪�d�SNPٜ��B+��p	�l�v#+�K:x-���ٲI@�`Iu:�jjz0�`�z-㧦�=����E��mY55� RDI�!�0��ŵ�e�g�+*"�"�r�euK�^fǱE�ٽ
�@#�V�O�E>6� h&@�(CB\N5�\�DREJ%�j7C#nC��԰58[!�q-FL��Q�3ͥP8q&U��L�X,3�5��*7*� ]�\��Vo.�j2X��>����L�ٝ�4��Kn��ԯ.��Xc��Į/���e�D,����Ey�Nޓ)�%�����[l��8�Y�<�v.�e��kf����ؤmH��N�b	�v���/R�(U6
�)�-d߇<��V4�PC��F���dA2�Dl�7%�A���j��b4���V�XB�=��TBޢTdMm�b��魵��Zr�+#0V�)"AL!PD0�Y�¥
*�­�4 �b��V��/�2#�7Y�c,�9ˋz	bF�r3,�_�o�a#�#&lI��j
Ն�j��VT^���˜�Ov�<�#<�>y�|�|�k6FgJ�(�ɣ��� php���JUE
�UMxPl`[�X�L��.$ÐMkY��V���Κ�);��aȄ�c8ccba.ɫ��cn�Y(�c��Ts4��9���Po����U��ʹg����AO�
�!@� � �����&�.�p�!�(=t