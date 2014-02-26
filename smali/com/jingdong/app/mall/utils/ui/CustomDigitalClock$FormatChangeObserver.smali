.class Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "CustomDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;)V
    .locals 1
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock$FormatChangeObserver;->this$0:Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;

    .line 309
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 310
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock$FormatChangeObserver;->this$0:Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;

    #calls: Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;->setFormat()V
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;->access$0(Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;)V

    .line 315
    return-void
.end method
