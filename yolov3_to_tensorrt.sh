DIR_ONNX=weights/
V_YOLO=v3
SAID=608

python3 yolov3_to_onnx.py $DIR_ONNX $V_YOLO $SAID
python3 onnx_to_tensorrt.py $DIR_ONNX yolo${V_YOLO}_${SAID}.onnx

