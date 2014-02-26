.class Lcom/jingdong/app/mall/gis/GisUrlUtil$1;
.super Ljava/lang/Object;
.source "GisUrlUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/gis/GisUrlUtil;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/gis/GisUrlUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$1;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$1;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    #getter for: Lcom/jingdong/app/mall/gis/GisUrlUtil;->mapButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->access$0(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$1;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    #getter for: Lcom/jingdong/app/mall/gis/GisUrlUtil;->textVersion:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->access$1(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$1;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    #getter for: Lcom/jingdong/app/mall/gis/GisUrlUtil;->mapVersion:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->access$2(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$1;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    #getter for: Lcom/jingdong/app/mall/gis/GisUrlUtil;->textButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->access$3(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 101
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$1;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    #getter for: Lcom/jingdong/app/mall/gis/GisUrlUtil;->mapButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->access$0(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 102
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$1;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    #getter for: Lcom/jingdong/app/mall/gis/GisUrlUtil;->orderTraceInitFlag:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->access$4(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$1;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    #setter for: Lcom/jingdong/app/mall/gis/GisUrlUtil;->orderTraceInitFlag:Z
    invoke-static {v0, v2}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->access$5(Lcom/jingdong/app/mall/gis/GisUrlUtil;Z)V

    .line 104
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$1;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    #calls: Lcom/jingdong/app/mall/gis/GisUrlUtil;->show()V
    invoke-static {v0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->access$6(Lcom/jingdong/app/mall/gis/GisUrlUtil;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$1;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    #getter for: Lcom/jingdong/app/mall/gis/GisUrlUtil;->textVersion:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->access$1(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$1;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    #getter for: Lcom/jingdong/app/mall/gis/GisUrlUtil;->mapVersion:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->access$2(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$1;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    #getter for: Lcom/jingdong/app/mall/gis/GisUrlUtil;->textButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->access$3(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 110
    iget-object v0, p0, Lcom/jingdong/app/mall/gis/GisUrlUtil$1;->this$0:Lcom/jingdong/app/mall/gis/GisUrlUtil;

    #getter for: Lcom/jingdong/app/mall/gis/GisUrlUtil;->mapButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/gis/GisUrlUtil;->access$0(Lcom/jingdong/app/mall/gis/GisUrlUtil;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0
.end method
