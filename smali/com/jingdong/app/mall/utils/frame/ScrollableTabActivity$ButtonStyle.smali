.class public Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;
.super Ljava/lang/Object;
.source "ScrollableTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ButtonStyle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "title"
    .parameter "iconStateId"

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1158
    const/4 v1, 0x3

    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    #getter for: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->defaultOffShade:I
    invoke-static {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->access$3(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    #getter for: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->defaultOnShade:I
    invoke-static {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->access$4(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)I

    move-result v2

    aput v2, v0, v1

    .line 1159
    .local v0, iconStates:[I
    #getter for: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->states:Ljava/util/List;
    invoke-static {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->access$5(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    #getter for: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->titleList:Ljava/util/List;
    invoke-static {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->access$6(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter "title"
    .parameter "offIconStateId"
    .parameter "onIconStateId"

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1164
    const/4 v1, 0x2

    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p4, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 1165
    .local v0, iconStates:[I
    #getter for: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->states:Ljava/util/List;
    invoke-static {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->access$5(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    #getter for: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->titleList:Ljava/util/List;
    invoke-static {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->access$6(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Ljava/lang/String;III)V
    .locals 2
    .parameter
    .parameter "title"
    .parameter "iconStateId"
    .parameter "offShade"
    .parameter "onShade"

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1170
    const/4 v1, 0x3

    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    const/4 v1, 0x2

    aput p5, v0, v1

    .line 1171
    .local v0, iconStates:[I
    #getter for: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->states:Ljava/util/List;
    invoke-static {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->access$5(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    #getter for: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->titleList:Ljava/util/List;
    invoke-static {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->access$6(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1173
    return-void
.end method
