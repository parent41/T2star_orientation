
head_orientation = function(path_xfm) {
    xfm = read.table(path_xfm, skip=6)
    xfm = xfm[,c(1,2,3)]

    A=c(0,0,1)
    B=as.matrix(A*xfm)

    angle=acos((A%*%B)/((norm(A, type="2")*(norm(B, type="2")))))
    angle_deg = angle[3] * 180 / pi

    return(angle_deg)
}

head_orientation("./ADB0002_template_to_T2native_transform.xfm")
