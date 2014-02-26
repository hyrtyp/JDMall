.class Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;
.super Ljava/lang/Object;
.source "LifeAssistantActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->getAllInfoList(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;)Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/JdVirtualOrder;

    .line 149
    .local v7, jdOrderStat:Lcom/jingdong/common/entity/JdVirtualOrder;
    invoke-virtual {v7}, Lcom/jingdong/common/entity/JdVirtualOrder;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, url:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/jingdong/common/entity/JdVirtualOrder;->getFunctionId()Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, functionId:Ljava/lang/String;
    const-string v0, "jdgame"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {v7}, Lcom/jingdong/common/entity/JdVirtualOrder;->getFileSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 154
    .local v5, size:I
    invoke-virtual {v7}, Lcom/jingdong/common/entity/JdVirtualOrder;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, downloadUrl:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    #getter for: Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->access$2(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/jingdong/common/login/SafetyManager;->getCookies()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lcom/jingdong/common/utils/JDGameUtil;->gotoJDGameUtil(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 193
    .end local v4           #downloadUrl:Ljava/lang/String;
    .end local v5           #size:I
    .end local v6           #functionId:Ljava/lang/String;
    .end local v7           #jdOrderStat:Lcom/jingdong/common/entity/JdVirtualOrder;
    .end local v8           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 158
    .restart local v4       #downloadUrl:Ljava/lang/String;
    .restart local v5       #size:I
    .restart local v6       #functionId:Ljava/lang/String;
    .restart local v7       #jdOrderStat:Lcom/jingdong/common/entity/JdVirtualOrder;
    .restart local v8       #url:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    #getter for: Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->access$2(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lcom/jingdong/common/utils/JDGameUtil;->gotoJDGameUtil(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    .line 188
    .end local v4           #downloadUrl:Ljava/lang/String;
    .end local v5           #size:I
    .end local v6           #functionId:Ljava/lang/String;
    .end local v7           #jdOrderStat:Lcom/jingdong/common/entity/JdVirtualOrder;
    .end local v8           #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 163
    .restart local v6       #functionId:Ljava/lang/String;
    .restart local v7       #jdOrderStat:Lcom/jingdong/common/entity/JdVirtualOrder;
    .restart local v8       #url:Ljava/lang/String;
    :cond_2
    const-string v0, "ebook"

    invoke-virtual {v7}, Lcom/jingdong/common/entity/JdVirtualOrder;->getFunctionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    #getter for: Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->access$2(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    invoke-virtual {v7}, Lcom/jingdong/common/entity/JdVirtualOrder;->getFunctionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/JDEbookUtil;->gotoEbookM(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {v7}, Lcom/jingdong/common/entity/JdVirtualOrder;->getFunctionId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v1}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    new-instance v2, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1;-><init>(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;)V

    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
