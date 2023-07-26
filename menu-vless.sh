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
BZh91AY&SY�J ?��1�
 ���?�������p F �  `�}�z���z��zc�T�׺�V�J�A2z�P�M d��Q�� шz���  H� "m5L��=4�~�m!�y@dd�h4M �M��oSP��?TzA����m@ =@@  � �4  Mh  �L��$ɣJm1
oSL��=#PQ���0Fj4���CD�	��4��2z�����=MF&&�FF��e���&A ��<t�>&>?�g��b�����d�� �?�lՁ���81R�f��k|�B5r���A����5�����5��q�(4s��Vy Z�T��+#?�jZj�|ck�S�M�1pq���pv޻��q��S��'�Ö�( ]s����f�v_6���eF���9��]ԳmcH�ߦ�D)5���-�-��p���k�qG�$*�����BDN�@��_�uC���w��{��d��u9���.Ӿ%K�u���c���O���P�}"Zb/�5Q&�o9�v�W��J+:��*���J�
t*��)
����8����X�t!��Wm��vD�r$��%�����R��c��D;�n�͑����r�NJ��"�sM���I"��� B`�ƉAw���j��f!����o��h�U���暈7H�-i E-E��$�^�"F!�����jdgζ�������:�g�s��؅PӞH��۳��G�_�fwq눠ky�1���1p*8�gMI6|mE�n���੎A�j��J�D�B�<5ۆ�~�d��נB>h�CX_�ġ���Ӑdh�PRpZ5�%"H�F} �%��[	d�,ī���A �|61&�v�N۹�y��m��0��47�)5�f&�!B��ڳ&���:Rd��u^/^�����c�"��*������yFޙ]�;��nO�w�,�EM��8��55>K�z^(�אQ��v�O�f�wq	�i���[�ߗK�I٧\y�l*
>h�1���
1^LH<���*�w�@4C@�+��ʢfl0�Ά�`\s�F���Z����	�9��F��Z��2�976��2��TC ��ʈ��ݢ�qix�tq@�O]F
mU�	� ���L�P��bH2��$J�t�㩑F�����¯T��hZSU
BR�����P��p����a��@142�8)ɡ;�ʡ'�'�B��s���M��aI��y��224B�&��d�j��)Źd��Vu�-�|{�E�k���_�f��hp)�t��
7(�����)��򳳉�-�e�C�~]	N�s���� q[	Y;*�@9�_w�7>���k�C��l�" Bn�f���=F(��<�8��l�*K ���4��=eCr�0���e�q�,ve���zjB�Q��f(yе[��*�3C�x5XR�����S+{��x�������>Chn\Տ`e.�l��p��^��=��Q���&�WTr��$:C
F�"];���fj^km�rc�l���ck�-�2d���%�ia������ p=] |���dz`�:H��,[�g�t푣���7�ܷ�x��5C��pM��.����Mj��[n8�����ie�եZV:8y�xk
mS!"�l@D�P��TG��\���t��7����!zi��\4t:���� ����N����Wq��fŵ�o�U.`s&�cf�`.FX�4r�Y����|;�5�����A6�z�����"OK���EZR� ��e�o�kp��a�r��OY&�@�+	��C�- ��%/cۉ��̶BJ�5,\۱hT�酀�߁�
��(����ah�vZ���݇E�b�N�mt1��O��Jg:�����ms�M�V#�e��PbE]_P�Y����N����2�m݇���wy���J���M^�k����� ���
	�(�P ��Q�'�z@ � C�rE8P��J