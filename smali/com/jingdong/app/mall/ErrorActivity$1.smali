.class Lcom/jingdong/app/mall/ErrorActivity$1;
.super Ljava/lang/Object;
.source "ErrorActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/ErrorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/ErrorActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/ErrorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/ErrorActivity$1;->this$0:Lcom/jingdong/app/mall/ErrorActivity;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jingdong/app/mall/ErrorActivity$1;->this$0:Lcom/jingdong/app/mall/ErrorActivity;

    #setter for: Lcom/jingdong/app/mall/ErrorActivity;->isRestart:Z
    invoke-static {v0, p2}, Lcom/jingdong/app/mall/ErrorActivity;->access$0(Lcom/jingdong/app/mall/ErrorActivity;Z)V

    .line 113
    return-void
.end method
