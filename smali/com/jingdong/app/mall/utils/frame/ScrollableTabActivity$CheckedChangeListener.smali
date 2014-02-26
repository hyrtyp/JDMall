.class Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;
.super Ljava/lang/Object;
.source "ScrollableTabActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckedChangeListener"
.end annotation


# instance fields
.field private mNow:I

.field private oldFlag:Z

.field final synthetic this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 1044
    iget-boolean v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;->oldFlag:Z

    if-eqz v2, :cond_1

    .line 1045
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;->oldFlag:Z

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    iget v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;->mNow:I

    if-eq v2, p2, :cond_0

    .line 1053
    iget v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;->mNow:I

    .line 1054
    .local v1, old:I
    iput p2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;->mNow:I

    .line 1056
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    #getter for: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->buttonActionList:Ljava/util/List;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->access$1(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;

    .line 1057
    .local v0, action:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->isHighlight()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1058
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #calls: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->checkNoEvent(Ljava/lang/Integer;)V
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->access$2(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Ljava/lang/Integer;)V

    .line 1060
    :cond_2
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->run()V

    goto :goto_0
.end method

.method public setOldFlag(Z)V
    .locals 0
    .parameter "oldFlag"

    .prologue
    .line 1068
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;->oldFlag:Z

    .line 1069
    return-void
.end method

.method public setmNow(I)V
    .locals 0
    .parameter "mNow"

    .prologue
    .line 1064
    iput p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$CheckedChangeListener;->mNow:I

    .line 1065
    return-void
.end method
