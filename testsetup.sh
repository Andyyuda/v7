#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /data/data/com.termux/files/usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
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
BZh91AY&SY�`� ���}�`@�����������h �� `�����7��M)���o8�n^�� 4���� (*@=�ׁ�!=�S�5?T���&�='�S��'�4��mCd�i�=@ OJ0L�OК�z��4d�44�@@ �  �	'�қ
mO$ѐP ��h     		�S���MM2�@ �7� 4�4��h   �  @  � @   �"4�@dBz�����4�Sz�Sb�4���OP^�#[�����$�_g��7���c���F4��\E�`F>i}z�1@G2g?��}�~�3��A�K������h������R��U������Mo�Ʌ�gK͚@����
��K[	��-�H(b34G��SS��Fԩ� ���_���`�*aKF�`\I����VJt�`�#< 0��F��#M|	P1EZh��B�H{(>��"�S�^�YP$��z�YE�M! � ܵ"4�t-	|�=]���U;RBޥ;��:1 �v�����X ҁ.&�����k&t~6G� M�٨nئ�Ѱ�b�p97K�U�/KfakL�sA�XI���� Ő��t��g�U�]��p3$����Py]��ۇX#��_n^?_��s鶤ø�5 �8~���F��$!N8�:�����F������7���i�1�w�U�6cT�e��4����i�EK���y$c�ͭ5���Ʊ�vL�����E�q��)eFQ�ϙ�͜��"	��,�H��aZ�������)L�%؜I��{O�����[g����� C��ݬ���'q�Q-c���]������{��G6�� ����&Sr��U�#з>�P�����L�&K���<fFa�&�9XiL,���e��&�IJ���M�	�B��Ț�EƗKm��7��l4m �Av^@����v���q���8��U$Wy�9H�i�eƙv�@�8axH��2�Cs��T`��/v����r��6s��|Y�˦��¬�І -��zMs��5�5�-e¹4;W3��WLO�$�`
I�c��L\�t��W�:{�q�-+&�\���I�i���1�m�ɸލ��B����E�+��2�)���h��L@?ѧ�NBo�&&�3"� *7�X�a���vT 7K�������  ��"�M+ٸ�z���7_�f[�`�A#2~��/\6�b�YM���m�m:�鐧S6Z������}F]�*k���i$h©�����wr�DM��2�"S�Y��3�s�u�քq�cNKE�&��EUV�A��uܱ����p@���7zx���!��!���9�D�� ���ak�]ǌ���s[Ծ�%W�degUE>�`J����Z'p��FR`�ŊX1�k�g!���A���t� �g�6��`*KȠ��`��GY���O�������9��r��H�~��V��Q�\:À����01e��~o�������N�[:�Y��<j�P>*@WyEq�8E�4p�y�o���#;I�]�5�m�"K?Z*��@h�D%x��a$U�c	4΁k�D@�F�ŠVyz��ڼ�R��r헯g'��)�M�)c�>��\����E�� Ǖ���RRc>N�
5�}wߊo�I)�(���Vʒ�i��-]H o����P��l�A1�;�L�,��Qϖ�T#u�ܓl�׀5X�}�Qt�q��$`��KJi��ݢJ?@�/������WŖ�6�≥�pN
�n)a2-4��]R���w�  �}��t�0
���͆���! ��'�"��f1!nL}�*"�y��M��H�A;�(k��X Y���[���f��TJaPQ�r̖�P�ԙ*��_"3�B�dVl\�-:V�x)�b����]+����������
-E��- c ��<�b��)!�T���^���<$H� �2	�7|;�<��
 �jQ�A��ױd|9[gOv)��&��U(o�����y���;�G��g&�D�aKD�S�@����c4 ��C(GFu�/��i���2���^�CG��֯�@L��l�X����d����V	X��]\L�
Iq0�˘ie���_=�aaY䲁uR"�ڤv����q����.a���HD����W�h�,�`\MO~�����tL�Z�������T\.;s�,����"Ƶ\ˮ�H�><�
���F��-�v�]���S9��u�����(F�P0಴����"ʭm�3Tٔ�� �
C�U-úI�vs\��۩�rmiɕ��g�?04V�3���T�B���[x*
ރv���]����ۻ���(1��*�}��4
�E5�h���'�.��4��t�����16f"(����|6�{3���b��e˅U�j~r[�4�b ��� Pˌ�E�O�;��W�s@@^x�y ��5!}���=2<�_��=����&�ױ������P�u��p��'�Sp�>���<dUa�,����b&��t�
?g�&%)�ӯ�,���ƞ�-�`��#[}&��%��i�4$���TT��?0zA28�M�f��ҋ����GA�s{U��z�ň�K��rƶp�̘����!�%UN
�qɰыzI��Ϋ
^��~�޷�]���7���;{������%�g�Q(3�X��~�a�'PVp���EF�A����2�`�� ( ��
��s���i0ޚ���3�i��!�d��`�l�U}��y�צ5��/Y��I.����ȵ�жP�3�K�+��ÒM�B��xf��y`K�`�pJ�*(m���X�C���s� �8hM�� �|>(Wj�\1��a�{�t��E=��D.�����@y�"9l["��`�� ��f߇�H �C�?��0�7��W*�$"�l�S�����F�&_fD���S��Z}s�z(��l*C ����~��1jKM��%��j}�/��bS��`��CF=h���Lg{.�_��J�m��z9� �a��� �#�J���r6���2�UT�%�9�j;�ZGhk]�

w�κ�c�A�jM�Jx��d�m�Z$��(����ݹ����!:����3g�P�T��*˜@j��!�>X����SC43F$gR��&Y�RI��p���Lm���+�Ś��<�x�'~ؽ%�SqwD��qP)>,�5�;+ ��0�0	؎N��
$D�l�8cFƈ�HP�Eԫ����4Yq�6I9�R|��1����6�c=e5�/�(�Q�����u|�;�Tu�"C_]�4&1X`mB� ��Ҳ�@�Y�z�(XY�KB%���%��;��ǽZ�{�5@ėL�LH
Z�r��s�:g
��:�Ksi��q���b��|pp�>�&���>�[�"TW��V�P��d�H̒fL�&�͊���C*T�֘g
�t���)�T3�$H�2Aϓ��0Lblm&	��f�
�9;���qIc|���5�%iДI�1A@�^̫	C,��\\�'{clV�B*=��DVܶ�����2Բ����( h m�%���$� ��y�Ja�k#�� ��9@?��X��a�?ä�,�v��!&�3li��(Q��P$X�L��0�2��Cy�v-'vJia_�I*B+X��˘���@��A����g5�Q^N��P�^&����*���H�>UHd$�n�Fĥ���sB孒p�A�^��2L4;@�5X�B�L���E�ݘ�;���W!�`���2)ф�-0����^#*M�;<{�K)!�����+M��!l��i�$m����m��:�G�v	��[|�M���
�X�Qǐ��ͱ<]ejuгȼ �%i� :ee�:o�4;�)IbITR�R���b��Z�p�s�.՜2ʹdy�RNP�	N����ߐ�}��x��Ⱦnp�R�ii�vlb�0X|+�IU�|��Ћr�yz�nF�o����5<E$-�kkR0�#�W�n+���� �0��LO�r/�Z���C`eƭb��ڇ�3P0�D�L� P�;���i�Y��QRƭtUh!c�q"�q�J���+�E{�W�Eo>2�(��Q�t������A'1�بB!�e�βJ�Hy[J�tT bl���D���Z�E+'~)��넻ߑ���XG[���F=��p�b�M�AJ�L�Ƅ[YA���\�m����!g���겇4�&�)��b�I.�����.��{;p:�2 㼠%�dUBK���e��I3���4˨19/E�-�Y$��@�v��Q_�848U,z&�^�a]F���z��,�j\b����*�"�y�y���A�$)�j&b��iMu7�1��B�b4���Z���7 lU#�K��<�4kZ�E"p�H�X	 w�<-"���Q$mp|��C|��U���p�d�_�b@$ ��La]*@�]4�������+�O���j���M��@K����vțv��������@��r��rI�m��P�L�����j^�'f0�UE�#�R�)���+ ��Hm����`E �O����"�(Hf�S�