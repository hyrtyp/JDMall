.class Lcom/jingdong/common/constant/Constants$1$1;
.super Ljava/lang/Object;
.source "Constants.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/constant/Constants$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/constant/Constants$1;


# direct methods
.method constructor <init>(Lcom/jingdong/common/constant/Constants$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/constant/Constants$1$1;->this$1:Lcom/jingdong/common/constant/Constants$1;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 219
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 220
    return-void
.end method
