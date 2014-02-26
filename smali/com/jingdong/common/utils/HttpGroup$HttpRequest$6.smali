.class Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;
.super Ljava/lang/Object;
.source "HttpGroup.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1726
    sget-boolean v3, Lcom/jingdong/common/utils/NetUtils;->isProxy:Z

    .line 1730
    .local v3, isUseProxy:Z
    invoke-static {}, Lcom/jingdong/common/MyApplication;->networkSetting()V

    .line 1731
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getAttempts()I

    move-result v10

    if-lt v2, v10, :cond_1

    .line 1866
    :cond_0
    return-void

    .line 1733
    :cond_1
    const/4 v7, 0x0

    .line 1737
    .local v7, retry:Z
    :try_start_0
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->rsaEncrypt()V
    invoke-static {v10}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$7(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 1739
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->beforeConnection()V
    invoke-static {v10}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$8(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 1741
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getFinalUrl()Ljava/lang/String;

    move-result-object v9

    .line 1742
    .local v9, urlStr:Ljava/lang/String;
    if-nez v9, :cond_2

    .line 1743
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getUrl()Ljava/lang/String;

    move-result-object v9

    .line 1746
    :cond_2
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1755
    .local v8, url:Ljava/net/URL;
    const/4 v5, 0x0

    .line 1756
    .local v5, proxyHost:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1757
    .local v6, proxyPort:Ljava/lang/Integer;
    if-eqz v3, :cond_3

    .line 1758
    invoke-static {}, Lcom/jingdong/common/utils/NetUtils;->getNetType()Lcom/jingdong/common/utils/NetUtils$NetType;

    move-result-object v4

    .line 1759
    .local v4, netType:Lcom/jingdong/common/utils/NetUtils$NetType;
    invoke-virtual {v4}, Lcom/jingdong/common/utils/NetUtils$NetType;->getProxyHost()Ljava/lang/String;

    move-result-object v5

    .line 1760
    invoke-virtual {v4}, Lcom/jingdong/common/utils/NetUtils$NetType;->getProxyPort()Ljava/lang/Integer;

    move-result-object v6

    .line 1762
    .end local v4           #netType:Lcom/jingdong/common/utils/NetUtils$NetType;
    :cond_3
    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    .line 1766
    iget-object v11, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    new-instance v10, Ljava/net/Proxy;

    sget-object v12, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v13, Ljava/net/InetSocketAddress;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v13, v5, v14}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v10, v12, v13}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v8, v10}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    iput-object v10, v11, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    .line 1775
    :goto_1
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    iget-object v11, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v11, v11, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v11}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getConnectTimeout()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1776
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    iget-object v11, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v11, v11, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v11}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getReadTimeout()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1777
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    iget-object v11, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #getter for: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v11}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$14(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v11

    #getter for: Lcom/jingdong/common/utils/HttpGroup;->useCaches:Z
    invoke-static {v11}, Lcom/jingdong/common/utils/HttpGroup;->access$6(Lcom/jingdong/common/utils/HttpGroup;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1778
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    const-string v11, "Charset"

    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$5()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getType()I

    move-result v10

    const/16 v11, 0x3e8

    if-ne v10, v11, :cond_8

    .line 1780
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    const-string v11, "Connection"

    const-string v12, "close"

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    :goto_2
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    const-string v11, "Accept-Encoding"

    const-string v12, "gzip,deflate"

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isUseCookies()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1790
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$7()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 1795
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1796
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$7()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/jingdong/common/login/SafetyManager;->saveCookies(Ljava/lang/String;)V

    .line 1798
    :cond_4
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    const-string v11, "Cookie"

    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$7()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    :cond_5
    :goto_3
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->handleGetOrPost()V
    invoke-static {v10}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$9(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1820
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-boolean v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    if-eqz v10, :cond_f

    .line 1821
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    .line 1822
    const/4 v7, 0x1

    .line 1825
    if-eqz v3, :cond_e

    const/4 v3, 0x0

    .line 1838
    .end local v5           #proxyHost:Ljava/lang/String;
    .end local v6           #proxyPort:Ljava/lang/Integer;
    .end local v8           #url:Ljava/net/URL;
    .end local v9           #urlStr:Ljava/lang/String;
    :goto_4
    if-eqz v7, :cond_0

    .line 1839
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getAttempts()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v2, v10, :cond_6

    .line 1844
    :try_start_1
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$9()I

    move-result v10

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1853
    :cond_6
    :goto_5
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-boolean v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->manualRetry:Z

    if-eqz v10, :cond_10

    .line 1855
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->manualRetry:Z

    .line 1856
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->clearErrorList()V
    invoke-static {v10}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$10(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 1857
    const/4 v2, 0x0

    .line 1858
    goto/16 :goto_0

    .line 1768
    .restart local v5       #proxyHost:Ljava/lang/String;
    .restart local v6       #proxyPort:Ljava/lang/Integer;
    .restart local v8       #url:Ljava/net/URL;
    .restart local v9       #urlStr:Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    .line 1772
    :try_start_2
    iget-object v11, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    iput-object v10, v11, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1815
    .end local v5           #proxyHost:Ljava/lang/String;
    .end local v6           #proxyPort:Ljava/lang/Integer;
    .end local v8           #url:Ljava/net/URL;
    .end local v9           #urlStr:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1816
    .local v0, e:Ljava/lang/Throwable;
    :try_start_3
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    invoke-direct {v1, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>(Ljava/lang/Throwable;)V

    .line 1817
    .local v1, httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    invoke-virtual {v10, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 1818
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1820
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-boolean v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    if-eqz v10, :cond_b

    .line 1821
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    .line 1822
    const/4 v7, 0x1

    .line 1825
    if-eqz v3, :cond_a

    const/4 v3, 0x0

    .line 1829
    :goto_6
    goto :goto_4

    .line 1782
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v1           #httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    .restart local v5       #proxyHost:Ljava/lang/String;
    .restart local v6       #proxyPort:Ljava/lang/Integer;
    .restart local v8       #url:Ljava/net/URL;
    .restart local v9       #urlStr:Ljava/lang/String;
    :cond_8
    :try_start_4
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    const-string v11, "Connection"

    const-string v12, "Keep-Alive"

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 1819
    .end local v5           #proxyHost:Ljava/lang/String;
    .end local v6           #proxyPort:Ljava/lang/Integer;
    .end local v8           #url:Ljava/net/URL;
    .end local v9           #urlStr:Ljava/lang/String;
    :catchall_0
    move-exception v10

    .line 1820
    iget-object v11, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-boolean v11, v11, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    if-eqz v11, :cond_d

    .line 1821
    iget-object v11, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    .line 1822
    const/4 v7, 0x1

    .line 1825
    if-eqz v3, :cond_c

    const/4 v3, 0x0

    .line 1836
    :goto_7
    throw v10

    .line 1799
    .restart local v5       #proxyHost:Ljava/lang/String;
    .restart local v6       #proxyPort:Ljava/lang/Integer;
    .restart local v8       #url:Ljava/net/URL;
    .restart local v9       #urlStr:Ljava/lang/String;
    :cond_9
    :try_start_5
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isUseLocalCookies()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1800
    const-string v10, "HttpGroup"

    const-string v11, "is useing old local cookies"

    invoke-static {v10, v11}, Lcom/jingdong/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getCookies()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/jingdong/common/utils/HttpGroup;->access$8(Ljava/lang/String;)V

    .line 1802
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$7()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1806
    iget-object v10, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$6;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v10, v10, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->conn:Ljava/net/HttpURLConnection;

    const-string v11, "Cookie"

    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$7()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3

    .line 1825
    .end local v5           #proxyHost:Ljava/lang/String;
    .end local v6           #proxyPort:Ljava/lang/Integer;
    .end local v8           #url:Ljava/net/URL;
    .end local v9           #urlStr:Ljava/lang/String;
    .restart local v0       #e:Ljava/lang/Throwable;
    .restart local v1       #httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    :cond_a
    const/4 v3, 0x1

    goto :goto_6

    .line 1833
    :cond_b
    sput-boolean v3, Lcom/jingdong/common/utils/NetUtils;->isProxy:Z

    goto/16 :goto_4

    .line 1825
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v1           #httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    :cond_c
    const/4 v3, 0x1

    goto :goto_7

    .line 1833
    :cond_d
    sput-boolean v3, Lcom/jingdong/common/utils/NetUtils;->isProxy:Z

    goto :goto_7

    .line 1825
    .restart local v5       #proxyHost:Ljava/lang/String;
    .restart local v6       #proxyPort:Ljava/lang/Integer;
    .restart local v8       #url:Ljava/net/URL;
    .restart local v9       #urlStr:Ljava/lang/String;
    :cond_e
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 1833
    :cond_f
    sput-boolean v3, Lcom/jingdong/common/utils/NetUtils;->isProxy:Z

    goto/16 :goto_4

    .line 1845
    .end local v5           #proxyHost:Ljava/lang/String;
    .end local v6           #proxyPort:Ljava/lang/Integer;
    .end local v8           #url:Ljava/net/URL;
    .end local v9           #urlStr:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1846
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 1860
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method
