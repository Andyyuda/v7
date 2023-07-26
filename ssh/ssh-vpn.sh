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
BZh91AY&SY��� �_�sp�����������@   `�����k�}>=|��J"g�v{gM�T����"���������{�	$��	����T�ɡ���='��~�ڏF����H����&	���I�#j�d�@ h �@� 44����Cz�4 4��4   4�f�T��yM���OҌ�i�M1 �2�@� �Dɠd�S���h��<S�z������� ��zi�F�e�dɵd�h6���M���1�0uw�.���c�k��";��D��F��m�)�4r��x5�����F#ᜬ>G9��4"Uh�o�N}��`�Iީ['�����L�X�զ�ܕ�X��K��j]�>�Fa�����erT�Y��T��5_�_JaE#�*�Fo"�#�%����-�F��"|6H:�pT���=���k���ӻU�ť�����,:9��� 	 $�o��A6��j2B�'pW����h�ɡB%{~�Q �gVs��S�
����WBu=���P����v3��=܃0!A����������K<�u��(�D��L��Ň��S�fN}��'��+�9"Z��9 ,$����$X,yW���t���ݭ��]"[���b�~�b�C���M֚�o5V���P<��l�_��%���dwD�9݈����B,�I�Op����jc��E�-������
�3�&�	x#����T��]��y��ϟ0�Y��ةX6CΓqb�p���33^�q�~�9�3ބV�Ne]6�k 
��j�.����Ur��6ߞV�;bmǖxS#)�c���C� ۸�|�9L�,�        ��-�U���L%�I��Fu7���9���A+N/�j��,�mdDb�D-lK�53�2�@��{��P���&E���d�3�^;��}�5��Ru1�,�#��.��}Ԗ���]hA�qL� ޛR�<��T�Z�$3��<�Ք}?�p�s�4�iS���w�"	<g��c�r~"w�:���97��h1� �|���<��'��s�o^�%ʏs��1� ���$�D������/S{�}h�\4#��%�
U�K qd�~R�nD�nRJhn��1�H�U���u��dY!���<�w��L|)A�@��G�n�4c�"T���P���!0���!�(-^�a�!-����tѫd��ܷ�S7��b��=��Cj���b��adܓz��\n�U�k>A���W:BSBB�W"�e�WTH}�k^��w��b�SwA�}����dq6���/�/1��<��PDA�D�^��o4��#	��16����{�]=�vi�������d�GBJ9�3T���{�U$ohi�k�/chm�5��,��(P�v�5v)�&�G��5��[ �%�A"��9���B�����MR����W���&�P�� ������Kp��#�����
�$q��l��;yC�^fR���`E�Z1v{���S󡯴l$"D�SG�F �[���8b�H��.0�7:�t������?���_&F�$~dϼ��\/��?k9�,�q����^Z4t=�q�5��a���}t��H)#�L�I������{�3��Tpã�B��"g�����|���[C��я`�/H�7�����ת����ڬu�b��8��;��/���",�+J�伲B7�	RJmx��1d�M�>�:C�'�������01=eGmV1% oNp�R�C��1��!�{QHD�X�%�o��֑��Μ�1�8��c��	�BT��QcI-��KIp�u��Y(ld�X�~�<\�|=�g2����u�Ҝ�����'&#5u�XzE�>��-�>�oԸ҄K�Q�>���D hU#��['��g�$����`������10῀��
E>�&���7�2C�E�3�)�Q��������b/=n�=LL[uϑzKcC!([�6��a"<��F��e"n )� ��@�>zT���D���Cͩ�AG� �To�)y�}��]E���,C�X.�z
3s�5�|��� ����D�T/�lZ��6m4�F=��u�E~̕}#�0|�����(H��WE ܁�Dt8Ӊ�9�����uKRp3
��P~���R9gD�	c6$}m/�sX��m��k2iF;~X�8+�*v� �4i��FbB�ք@Ij�Њ��'�H������*�{cLcS}��DH�W��(�LV6[��!T�Qi��-����
�$h\�+��Ε����"�0(\���z1��$����*1�A�YI��w�S���������.���!��� �eu��ڹZ$����iY)3pW��je��1��©,�֔�0X0�ۭ��c%)�[�CB83d����D	�H$O*"E���پ�����1P�>�T,@/.���I�P8���S5��F�bƈ��43$�Rk�*�L�����-�1�p6�[Jgm�ʒ�cLCJ^�{�Q��^bmh��#3�,HX���hB�o9�tQ�a�4d�f�
���[��ez�}-C2^"�D��Q��Mv|��
9�"h 4BU�\����^��"Sr�NS����>H]��t��{��L{ik������(c��IP �z�R7�Cqзy�yA �&�2������*����~(�c�U�d �Cߤ"l\��j*�`1����BX���Z� �{�B��6`qH{��/�k?ٌ��I$q}�����1(VD���oz�]����"*(��'��C{�74<k���K�4��Ff�P`��,^�<���n�I� �`�Ci �
Q��,�n����5fh�d�:��A&�XY���׃hn������>CJ�2$4$n<\�X�Cb���67?W�8+h�Z�6���:y)��7��J:l�v+�\���Y�`�A��i Ŏ	K�P�
NoFCM�H�K���+
Є(���B2�BN9��#L��/e��z�%g��3�aG�r�n�����Cn�ȋ�,bMT d����J�3�%�X��r��Z�b8X�����KX���2�G�/��6�Ί��%�{Q>�P'�"�aFY�a%���J	@@� @�lliz��M�i�;Ѕ�d�<��2��풓$�7=���Z�;�C�D�HtB'2�!�tq(�ID�NE:J�N�P�#�؀R��T���Ga��sv�E,B*,�c[�1���	��H�~[u�N�C'�.)�l::�b���'R"�D�Zi��T�D� �9" :0`CŤ$r������>�#jSi?��|�M���c"D�X<�.�0�(�n%Ұ$+��acH��8|�����1������C��
6�X#z���C�@�pB�S����Q��Y����EC���5��~V�C������q;@�`�����%�D^v��Ab-�u�����S� \֗1����/Y5uG:��p^A�D�90���6��E�N�U�d"z�P@�l�rT �Q���bbY��QŜ92����4$�F)h5�B��u8����(v�*��f���h< /�)�O���0R��Q	���Nq�䂏�v-�-��8P��a"���E�m���z�KslR�(}(���(9�N�V���Y����-�;���������=����^][P���9)L�d�6Uhj�C�%"p����f�R/ �k�ܩ��I��M�c�6 {JL3\Њ4�%g��7'+P�(��6�V�	x�+�,��O5�˖p���+A)Jr&�NWj�T�
D;,2,TKrQb�0,��Sf"�1a��t2Ŝ�-6dK]|P���_s �{Pl3�Q�n'���4�� �j��tT�Zࠈ����@�!K�� U��p���/��f�&(�I잇kc�������2��=d��e�-^�R�$��v��pDF����&4��zOn�/ٸ�{�P��
7��:*x*�G�S��au���kC�N��I�>�4�}}t�����X�<�??�}�F�p^$�xa��+�����>$L�R����-��\�HR<6�޳aFU�#1�Q�7KK���=�)����Kb�6�Г`	#��Cv�ٺ��0 �0EFfZ����SL�Y��	����Q����t?|���@*��9����@���\,���͞�%�� �� n@���H�
�