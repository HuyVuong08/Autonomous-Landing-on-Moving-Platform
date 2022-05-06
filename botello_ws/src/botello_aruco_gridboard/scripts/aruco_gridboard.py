import cv2
from cv2 import aruco
import matplotlib.pyplot as plt
import matplotlib as mpl

font                   = cv2.FONT_HERSHEY_SIMPLEX
bottomLeftCornerOfText = (10,1190)
fontScale              = 0.5
fontColor              = (0,0,255)
thickness              = 1
lineType               = 2


marker_length = .04
marker_spacing = .01
grid_cols = 2
grid_rows = 2

for first_marker in [0, 10, 20, 30, 40]:
    aruco_dict = aruco.Dictionary_get(aruco.DICT_ARUCO_ORIGINAL)
    board = aruco.GridBoard_create(grid_cols, grid_rows, marker_length, marker_spacing, aruco_dict, firstMarker = first_marker)
    img = cv2.aruco_GridBoard.draw(board, (1000, 1200))
    print(board.ids)

    cv2.putText(img, "ids:" + str(board.ids.reshape((grid_rows, grid_cols))), # + str([x[0] for x in board.ids]), 
        bottomLeftCornerOfText, 
        font, 
        fontScale,
        fontColor,
        thickness,
        lineType)
    print("ids:" + str(board.ids.reshape((grid_rows, grid_cols))))
    cv2.imwrite("board" + str(first_marker) + ".png", img)

cv2.imshow("aruco", img)
cv2.waitKey()
