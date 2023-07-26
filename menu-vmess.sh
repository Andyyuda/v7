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
BZh91AY&SY2�� D�1�
 ���?�������p F �  `��m����׉�.ٳݡ)56�Ѵ���OPh�F���4d��4�4z� �&Jy�Q�=���5=L�F �i�#F ����<��@  dd      � h44 4�42�  2 2  �BF�&FJc�M��4�����4C�d� (���2b�ڍ�hi�=2�C�i���A�����a �;�u��W��aߒL-���W��h�����j�C&Z�5�cW�F��i�������pЀ>>�q����i��(�������B�A�VFx�A�h��6��w���N6��]������)����Ú�0 `��(u�=&m�C���ʎ��<����a+țy,㥐g�!H:�v���T���^G_�a=�@_,Hb8��K��dX�%7pwT<?���/���vH<�5��*ݾh7>��x�Y�p>~A�����3�1-���mTB���˵,��T#Q�����g��6�Le�L1�|`�,3�M8�5]wmڭ��B����h��'TLg"I؉,�,t:E(��<Ɲ�w+ܵ�;�
1��[��U��^�&�W�rE)� x��l[9�4I��{� �֯�ϰ�4��^�7�,��d���` �[s����l,f�֗FZS�	�>�����}T�\u7��b�n���7������������Qrڬ���(��Aur�w�Bq!�j�a���<P�xa�<�/M�ӣgE�
p�0rt:3z��_v��F�/�L��AcI!`9h%ԼAm��Hσ1fN��6k�Rdmi<Ȉ|�5_Wնa��nbF�%9Rc���^�0��:��MC�ch��Q6��l����SqZ�)�~�ꮉ�2��mInX9���9�s"����5��'��8�c���pIST~���&�X�[�H(-��Z|�V@�c�����(,IcJsf~�u։U2J���Zeo`40F�\ ��ޒ�j����C�d(KK
�R��V��N=� ��&I״�1�;�c�6�e�)��A���C�ޥ�1��KMv�Q{@�u�Mmʻt�ߛ;w��DĠ!��h�F$�# H,�D�}���E��@���
���6�R�(%�IC�Y����Cj�+�;PSƷmx+<rd�y��3�HXZ �TB�YJR�!1�	@�]��nFDa�eص �l� �R��
���F���|�a�i��b�+�A�R�D��
7(���M)��򳯃�[ː�6a���	2R��.1֚Y��@ Rj�������.S/8���-��(�d"���|J���ZЂ���Eyp�`Q!6��)�l������`71�'����J�������嗦�1h1��LD�y�lY��Wl��&����芡�ek�OFcJ����˪�@�\�E�`��`p�銆�6(Tc�f�CY��@P$9�
F����-m��<��M>T�M����ɴ��Q����ў���譁�����:�,"4@�����V��Dft%�!L�R��(8a�Uxu�q2�xl��*	��U�+���Ч,e)�[�t4��}LV�a��\���0d	R-<�#��n�{޵�엸�9`�d`�'K���a����n��\a3���r��z�UPj���`:�S5D\a�h�,G>�ur!�ش�:��_�W�}:c#Z�-�4y�y]kZR�!�%�p�{�A�5�k�;m�� �¨�-t�B�R�M�R����IR楋�c[u-
�%1�0[�ޅd��n	,�[}�B���-U�W�f�]џ�!��mO��,G{z�!�vZ�o&�&����L8:	�s׫�d��@쬬5�7��+�r�?O�p�����]�	���Mߏ{��?��@ @� �E�K~� G�(���=g�Z�!���"�(HlP 