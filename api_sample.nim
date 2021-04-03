
## api_sample.nimはAPIドキュメントのサンプル
##
## これはトップレベルのドキュメンテーションコメント

var v1* = 1
  ## v1は1が入っている
  ##
  ## 複数行のテキストも表現できる

const
  v2* = 2
    ## v2は2
    ##
    ## こちらも複数行可能
  v3 = 3
    ## 非公開なのでドキュメント生成されない

type
  SampleObject* = object
    ## SampleObjectはサンプルオブジェクト
    v: int

proc sampleProc*(n: int) =
  ## サンプルプロシージャ
  echo "Sample"