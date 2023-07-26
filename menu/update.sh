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
BZh91AY&SYN�? _�1p���?�߮����@   `	+���ݹ����ͨ*�ݻ���p�&��2=OD�MQ�@4  1����#@52M�Lҍ�4�@ �    ��B�ORz�oT � h=M 4  ?T���`�i�M� �    ��������#1�h24h��"H�4ѩ���2j�~E��d`��jf�d  �,�,����*0#�d�������;> �^q/�/�+D�mI��%u	������l����Z��@6aS=-�K Y�+�F}T�@
�)]�B���� x8��_d�x���^����U���M�uЬ���m��X�i�!:��Y��[�293<p�o�vw^,�%a�����A�$P�hu:�Ý:䉼�ӱ�R�D
Q��+0~���� ?w.��  թR]�y%��6 �   F+  G;%ǖ� .�zz]�6﷓���0n@Ǫ	���F�	��$O\��� |χ-���fg�o�'�eB�f ̷�P�����Eb��b��pQQ>@���%�oL���%�B�����PQ$�9{�<ZnC��!�Ja�*�3@ۖ�̖�DPm�	P��z��	jS�P�e;QmL��`��7�[�qB��R'BJ�hm �%Td����흘o�pL�_U�]��eQ3iDD�aX� 2���C"�uAj&�xH���؆��z���۹C8�݅��+��!$�C�NFm7�Q6r��&7�e(�k
�Z�* �x7�����+N3��V�4�;��?XT�J�(��q�0Ì��]��	r|�	L���RH# 
�鿢��;�߲$�չ�inn����^�7����+���
RI��������;�U
�UO�A�Jȕm��zĄE����k���[I/�
Zy�P��"�v�G�cZE��h�*�5��+�pAT���Ώxi�̢a 
�3��Q�>m�>AR>
���㈑�w;��*��ϡ���^��������x=�)�� ������Ge�r}d��"e��	��TQ��?��[�!w����Q=�j,Q�$!K���y<�"�W-����vKZ.!�V5��dE"�(�$$���BD�2ʩ��V2��r�Z(�B�o%�\���u��]K�&sDO�p��q��<�:�a!!!!=�m�[�ۑ/KRZ¡9�*���'IjB���ђ���C�&��8��;�N%�_��${�c�38�����͕��XQ1AMnO�UrM�͚3܌��\\��8�$.������!-;���Hw�TOD��&���=ߗ��e	 RB��9�L��:�6�b�c�ˌB&���>ۀ���U@� ���9�÷C��'?�f̳N����(����!S6�
il����J�q�.sm�<�/���M���k���e9E׼�
;(��UkzTo�;���~����%t�w<��fs���AD��됃���D!B�!BR�'`n.0��A�˹m��I4�N �� A�Z?
"y��A$v�L�I�ۯ�ׄgB�D�
B(k�6�����U0�8��QQ4�i�\u�&u4��GD�8J�ʥ	* f?֞�_{A�]Bve�Q�UV�9�z�D�� 51�{t)�Q0"⸧��@ֿ,�D�
b�0)4�%��p$'�����M>���x�؃�5��!.QP!�%�t�.2�$l�gG�ϙQHH�"]�^���k;.2������UD�>�ּ.p����<xyI+�7�u<[�pw�h9�u,�FC�YaИT�2P`���ͅ�ʘ�+
���TJ�l���Ke|�e* Y��e����g�!"ض"��Ž
&��pܾ_�%U�Q5ݱ8U			k���TM�C��DL�|���&�;t5}��D����}��8����$G7�E7
$�m�.���a���m(p6�(�jT*(��QFkO��	5&� �w��^�x�"&ȉ��ƃN�@�Z�W��  n?�w$S�	�0c�